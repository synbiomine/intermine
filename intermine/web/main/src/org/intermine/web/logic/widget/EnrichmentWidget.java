package org.intermine.web.logic.widget;

/*
 * Copyright (C) 2002-2014 FlyMine
 *
 * This code may be freely distributed and modified under the
 * terms of the GNU Lesser General Public Licence.  This should
 * be distributed with the code.  See the LICENSE file for more
 * information or http://www.gnu.org/copyleft/lesser.html.
 *
 */

import java.lang.reflect.Constructor;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import org.apache.log4j.Logger;
import org.intermine.api.profile.InterMineBag;
import org.intermine.metadata.ClassDescriptor;
import org.intermine.metadata.Model;
import org.intermine.objectstore.ObjectStore;
import org.intermine.objectstore.ObjectStoreException;
import org.intermine.objectstore.query.Query;
import org.intermine.objectstore.query.Results;
import org.intermine.objectstore.query.ResultsRow;
import org.intermine.pathquery.Constraints;
import org.intermine.pathquery.OrderDirection;
import org.intermine.pathquery.PathConstraint;
import org.intermine.pathquery.PathQuery;
import org.intermine.util.TypeUtil;
import org.intermine.web.logic.widget.config.EnrichmentWidgetConfig;
import org.intermine.web.logic.widget.config.WidgetConfig;
import org.intermine.web.logic.widget.config.WidgetConfigUtil;

/**
 * @author "Xavier Watkins"
 * @author Daniela Butano
 *
 */
public class EnrichmentWidget extends Widget
{
    private static final Logger LOG = Logger.getLogger(EnrichmentWidget.class);
    private InterMineBag populationBag;
    private String filter;
    private EnrichmentResults results;
    private String errorCorrection, max;
    private boolean extraCorrectionCoefficient = false;
    private CorrectionCoefficient correctionCoefficient = null;
    private EnrichmentWidgetImplLdr ldr;
    private String pathConstraint;
    private ClassDescriptor typeDescriptor;


    /**
     * @param config widget config
     * @param interMineBag bag for this widget
     * @param populationBag the reference population
     * @param os object storegene
     * @param errorCorrection which error correction to use (Bonferroni, etc)
     * @param extraCorrectionCoefficient if true correction coefficient has been selected
     * @param max maximum value to display (0 - 1)
     * @param filter filter to use (ie Ontology)
     */
    public EnrichmentWidget(EnrichmentWidgetConfig config, InterMineBag interMineBag,
                            InterMineBag populationBag, ObjectStore os,
                            String filter, String max, String errorCorrection,
                            String extraCorrectionCoefficient) {
        super(config);
        this.bag = interMineBag;
        this.populationBag = populationBag;
        this.os = os;
        this.typeDescriptor = os.getModel().getClassDescriptorByName(config.getTypeClass());
        this.errorCorrection = errorCorrection;
        this.max = max;
        this.filter = filter;

        validateBagType();
        String correctionCoefficientClassName = (config.getCorrectionCoefficient() != null)
                                               ? config.getCorrectionCoefficient().trim()
                                               : "";
        if (!correctionCoefficientClassName.isEmpty()) {
            try {
                Class<?> clazz = Class.forName(correctionCoefficientClassName);
                Constructor<?> c = clazz.getConstructor(new Class[] {WidgetConfig.class,
                    ObjectStore.class, InterMineBag.class});
                correctionCoefficient =  (CorrectionCoefficient) c.newInstance(new Object[] {
                    config, os, bag});
                this.extraCorrectionCoefficient = correctionCoefficient
                    .isSelected(extraCorrectionCoefficient);
            } catch (ClassNotFoundException cnfe) {
                LOG.error(cnfe);
            } catch (Exception e) {
                LOG.error(e);
            }
        }
        process();
    }

    /**
     * Validate the bag type using the attribute typeClass set in the config file.
     * Throws a ResourceNotFoundException if it's not valid
     */
    private void validateBagType() {
        ClassDescriptor bagType = os.getModel().getClassDescriptorByName(bag.getType());
        if (bagType == null) {
            throw new IllegalArgumentException("This bag has a type not found in the current "
                                              + "model: " + bag.getType());
        }
        if ("InterMineObject".equals(typeDescriptor.getName())) {
            return; // This widget accepts anything, however useless.
        } else if (bagType.equals(typeDescriptor)) {
            return; // Exact match.
        } else if (bagType.getAllSuperDescriptors().contains(typeDescriptor)) {
            return; // Sub-class.
        }
        throw new IllegalArgumentException(
            String.format("The %s enrichment query only accepts lists of %s, but you provided a "
                + "list of %s ", config.getId(), config.getTypeClass(), bag.getType()));
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public void process() {
        try {
            ldr = new EnrichmentWidgetImplLdr(bag, populationBag, os,
                  (EnrichmentWidgetConfig) config, filter, extraCorrectionCoefficient,
                  correctionCoefficient);
            EnrichmentInput input = new EnrichmentInputWidgetLdr(os, ldr);
            Double maxValue = Double.parseDouble(max);
            results = EnrichmentCalculation.calculate(input, maxValue, errorCorrection,
                                           extraCorrectionCoefficient, correctionCoefficient);
            setNotAnalysed(bag.getSize() - results.getAnalysedTotal());
        } catch (ObjectStoreException e) {
            // TODO Auto-generated catch block
            LOG.error(e.getMessage(), e);
        } catch (NumberFormatException e) {
            // TODO Auto-generated catch block
            LOG.error(e.getMessage(), e);
        } catch (SecurityException e) {
            // TODO Auto-generated catch block
            LOG.error(e.getMessage(), e);
        } catch (IllegalArgumentException e) {
            // TODO Auto-generated catch block
            LOG.error(e.getMessage(), e);
            throw e;
        }
    }

    /**
     * {@inheritDoc}
     */
    @SuppressWarnings({ "unchecked", "rawtypes" })
    public List getElementInList() {
        return new Vector();
    }

    /**
     * {@inheritDoc}
     */
    public boolean getHasResults() {
        return results.getPValues().size() > 0;
    }

    private Map<String, List<String>> getTermsToIdsForExport(List<String> selectedIds)
        throws Exception {
        Query q = ldr.getExportQuery(selectedIds);

        Results res = os.execute(q);
        Iterator iter = res.iterator();
        HashMap<String, List<String>> termsToIds = new HashMap();
        while (iter.hasNext()) {
            ResultsRow resRow = (ResultsRow) iter.next();
            String termId = resRow.get(0).toString();
            String id = resRow.get(1).toString();
            if (!termsToIds.containsKey(termId)) {
                termsToIds.put(termId, new ArrayList<String>());
            }
            termsToIds.get(termId).add(id);
        }

        return termsToIds;
    }

    private Map<String, List<Map<String, Object>>> getTermsToIds(List<String> selectedIds)
        throws Exception {
        Query q = ldr.getExportQuery(selectedIds);

        Results res = os.execute(q);
        Iterator iter = res.iterator();
        HashMap<String, List<Map<String, Object>>> termsToIds = new HashMap();
        while (iter.hasNext()) {
            ResultsRow resRow = (ResultsRow) iter.next();
            String termId = resRow.get(0).toString();
            Map<String, Object> map = new HashMap<String, Object>();
            String displayed = (resRow.get(1) != null) ? resRow.get(1).toString() : "";
            String id = (resRow.get(2) != null) ? resRow.get(2).toString() : "";
            map.put("displayed", displayed);
            map.put("id", id);
            if (!termsToIds.containsKey(termId)) {
                termsToIds.put(termId, new ArrayList<Map<String, Object>>());
            }
            termsToIds.get(termId).add(map);
        }

        return termsToIds;
    }

    /**
     * {@inheritDoc}
     */
    public List<List<String>> getExportResults(String[] selected) throws Exception {

        Map<String, BigDecimal> pValues = results.getPValues();
        Map<String, String> labels = results.getLabels();
        List<List<String>> exportResults = new ArrayList<List<String>>();
        List<String> selectedIds = Arrays.asList(selected);

        Map<String, List<String>> termsToIds = getTermsToIdsForExport(selectedIds);

        for (String id : selectedIds) {
            if (labels.get(id) != null) {

                List row = new LinkedList();
                row.add(id);
                String label = labels.get(id);
                if (!label.equals(id)) {
                    row.add(label);
                }

                BigDecimal bd = pValues.get(id);
                row.add(new Double(bd.doubleValue()));

                List<String> ids = termsToIds.get(id);
                StringBuffer sb = new StringBuffer();
                for (String term : ids) {
                    if (sb.length() > 0) {
                        sb.append(", ");
                    }
                    sb.append(term);
                }
                row.add(sb.toString());

                exportResults.add(row);
            }
        }
        return exportResults;
    }

    @Override
    public List<List<Object>> getResults() throws Exception {
        List<List<Object>> exportResults = new LinkedList<List<Object>>();
        if (results != null) {
            Map<String, BigDecimal> pValues = results.getPValues();
            Map<String, Integer> counts = results.getCounts();
            Map<String, String> labels = results.getLabels();
            for (String id : pValues.keySet()) {
                List<Object> row = new LinkedList<Object>();
                row.add(id);
                row.add(labels.get(id));
                row.add(pValues.get(id).doubleValue());
                row.add(counts.get(id));
                exportResults.add(row);
            }
        }
        return exportResults;
    }

    /**
     * Returns the pathConstraint based on the enrichmentIdentifier will be applied on the pathQUery
     * @return the pathConstraint generated
     */
    public String getPathConstraint() {
        return pathConstraint;
    }

    /**
     * Returns the pathquery based on the views set in config file and the bag constraint
     * Executed when the user selects any item in the matches column in the enrichment widget.
     * @return the query generated
     */
    public PathQuery getPathQuery() {
        PathQuery q = createPathQueryView(os, config);
        // bag constraint
        q.addConstraint(Constraints.in(config.getStartClass(), bag.getName()));
        //constraints for view (bdgp_enrichment)
        List<PathConstraint> pathConstraintsForView =
            ((EnrichmentWidgetConfig) config).getPathConstraintsForView();
        if (pathConstraintsForView != null) {
            for (PathConstraint pc : pathConstraintsForView) {
                q.addConstraint(pc);
            }
        }
        //add type constraints for subclasses
        String enrichIdentifier = ((EnrichmentWidgetConfig) config).getEnrichIdentifier();
        boolean subClassContraint = false;
        String subClassType = "";
        String subClassPath = "";
        if (enrichIdentifier != null && !"".equals(enrichIdentifier)) {
            enrichIdentifier = config.getStartClass() + "."
                + ((EnrichmentWidgetConfig) config).getEnrichIdentifier();
        } else {
            String enrichPath = config.getStartClass() + "."
                + ((EnrichmentWidgetConfig) config).getEnrich();
            if (WidgetConfigUtil.isPathContainingSubClass(os.getModel(), enrichPath)) {
                subClassContraint = true;
                subClassType = enrichPath.substring(enrichPath.indexOf("[") + 1,
                                                    enrichPath.indexOf("]"));
                subClassPath = enrichPath.substring(0, enrichPath.indexOf("["));
                enrichIdentifier = subClassPath + enrichPath.substring(enrichPath.indexOf("]") + 1);
            } else {
                enrichIdentifier = enrichPath;
            }
        }
        pathConstraint = enrichIdentifier;
        if (subClassContraint) {
            q.addConstraint(Constraints.type(subClassPath, subClassType));
        }
        return q;
    }

    /**
     * Returns the pathquery based on the startClassDisplay, constraintsForView set in config file
     * and the bag constraint
     * Executed when the user click on the matches column in the enrichment widget.
     * @return the query generated
     */
    public PathQuery getPathQueryForMatches() {
        Model model = os.getModel();
        PathQuery pathQuery = new PathQuery(model);
        String enrichIdentifier;
        boolean subClassContraint = false;
        String subClassType = "";
        String subClassPath = "";
        EnrichmentWidgetConfig ewc = ((EnrichmentWidgetConfig) config);
        if (ewc.getEnrichIdentifier() != null) {
            enrichIdentifier = config.getStartClass() + "."
                + ewc.getEnrichIdentifier();
        } else {
            String enrichPath = config.getStartClass() + "."
                + ewc.getEnrich();
            if (WidgetConfigUtil.isPathContainingSubClass(model, enrichPath)) {
                subClassContraint = true;
                subClassType = enrichPath.substring(enrichPath.indexOf("[") + 1,
                                                    enrichPath.indexOf("]"));
                subClassPath = enrichPath.substring(0, enrichPath.indexOf("["));
                enrichIdentifier = subClassPath + enrichPath.substring(enrichPath.indexOf("]") + 1);
            } else {
                enrichIdentifier = enrichPath;
            }
        }

        String startClassDisplayView = config.getStartClass() + "."
            + ewc.getStartClassDisplay();
        pathQuery.addView(enrichIdentifier);
        pathQuery.addView(startClassDisplayView);
        pathQuery.addOrderBy(enrichIdentifier, OrderDirection.ASC);
        // bag constraint
        pathQuery.addConstraint(Constraints.in(config.getStartClass(), bag.getName()));
        //subclass constraint
        if (subClassContraint) {
            pathQuery.addConstraint(Constraints.type(subClassPath, subClassType));
        }
        //constraints for view
        List<PathConstraint> pathConstraintsForView =
            ewc.getPathConstraintsForView();
        if (pathConstraintsForView != null) {
            for (PathConstraint pc : pathConstraintsForView) {
                pathQuery.addConstraint(pc);
            }
        }
        return pathQuery;
    }

    /**
     * Return the correction coefficient used by the widget
     * @return
     */
    public CorrectionCoefficient getExtraCorrectionCoefficient() {
        return correctionCoefficient;
    }
}
