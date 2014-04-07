package org.intermine.webservice.server.widget;

/*
 * Copyright (C) 2002-2014 FlyMine
 *
 * This code may be freely distributed and modified under the
 * terms of the GNU Lesser General Public Licence.  This should
 * be distributed with the code.  See the LICENSE file for more
 * information or http://www.gnu.org/copyleft/lesser.html.
 *
 */

import java.util.Arrays;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.collections.map.HashedMap;
import org.intermine.webservice.server.exceptions.BadRequestException;

import static org.apache.commons.lang.StringUtils.isBlank;

/**
 * Request processor for WidgetsService that process request, validates it and returns
 * parsed input as a parameter object.
 * @author "Xavier Watkins"
 *
 */
public class WidgetsRequestParser
{
    private HttpServletRequest request;

    /**
     * The identifier for the widget config
     */
    private static final String WIDGET_ID = "widget";

    // These parameters are part of the public API - please don't change them without:
    //   a) making them backwards compatible where possible, and
    //   b) Letting all client library maintainers known what has changed and why.
    private static final String BAG_NAME = "list";
    public static final String POPULATION_BAG_NAME_OLD = "population";
    public static final String POPULATION_BAG_NAME = "current_population";
    private static final String SAVE_POPULATION = "remember_population";
    private static final String FILTER = "filter";
    private static final String MAXP = "maxp";
    private static final String ERROR_CORRECTION = "correction";
    private static final String EXTRA_ATTRIBUTE = "gene_length_correction";

    /**
     * ListsRequestProcessor constructor.
     * @param request request
     */
    public WidgetsRequestParser(HttpServletRequest request) {
        this.request = request;
    }

    /**
     * Returns parameters of web service as a parameter object.
     * @return ListsService input
     */
    public WidgetsServiceInput getInput() {
        WidgetsServiceInput ret = new WidgetsServiceInput();

        String widgetId = request.getParameter(WIDGET_ID);
        String bagName = request.getParameter(BAG_NAME);
        String populationBagName = request.getParameter(POPULATION_BAG_NAME);

        // This horror of a piece of code is to deal with a backwards incompatible parameter change.
        // POPULATION_BAG_NAME takes precedence over POPULATION_BAG_NAME_OLD.
        String oldPopName = request.getParameter(POPULATION_BAG_NAME_OLD);
        if (isBlank(populationBagName) && !isBlank(oldPopName)) {
            populationBagName = oldPopName;
        }

        String savePopulation = request.getParameter(SAVE_POPULATION);
        String filter = request.getParameter(FILTER);
        String maxP = request.getParameter(MAXP);
        String errorCorrection = request.getParameter(ERROR_CORRECTION);
        String extraAttribute = request.getParameter(EXTRA_ATTRIBUTE);

        if (isBlank(widgetId) || isBlank(bagName)
                || isBlank(maxP) || isBlank(errorCorrection)) {
            throw new BadRequestException("Bad parameters. I expected a value for each of "
                + Arrays.asList(WIDGET_ID, BAG_NAME, FILTER, MAXP, ERROR_CORRECTION)
                + " but I got these parameters instead: " + request.getParameterMap().keySet());
        }
        ret.setBagName(bagName);
        ret.setWidgetId(widgetId);
        ret.setExtraAttributes(Arrays.asList(filter, maxP, errorCorrection, extraAttribute));
        ret.setPopulationBagName(populationBagName);
        
        if (savePopulation != null && "true".equalsIgnoreCase(savePopulation)) {
            ret.setSavePopulation(true);
        }
        return ret;
    }
}
