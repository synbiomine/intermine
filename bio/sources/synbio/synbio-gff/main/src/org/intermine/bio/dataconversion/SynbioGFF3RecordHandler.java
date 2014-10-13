package org.intermine.bio.dataconversion;

/*
 * Copyright (C) 2002-2011 FlyMine
 *
 * This code may be freely distributed and modified under the
 * terms of the GNU Lesser General Public Licence.  This should
 * be distributed with the code.  See the LICENSE file for more
 * information or http://www.gnu.org/copyleft/lesser.html.
 *
 */

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.intermine.bio.io.gff3.GFF3Record;
import org.intermine.metadata.Model;
import org.intermine.xml.full.Item;

/**
 * A converter/retriever for the SynbioGff dataset via GFF files.
 */

public class SynbioGFF3RecordHandler extends GFF3RecordHandler
{
	private Map<String, String> geneIdToPrimaryIdentifier = new HashMap<String, String>();
	
	/**
	 * Create a new SynbioGffGFF3RecordHandler for the given data model.
	 * @param model the model for which items will be created
	 */
	public SynbioGFF3RecordHandler (Model model) {
		super(model);		
		geneIdToPrimaryIdentifier = new HashMap<String, String>();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public void process(GFF3Record record) {
		// This method is called for every line of GFF3 file(s) being read.  Features and their
		// locations are already created but not stored so you can make changes here.  Attributes
		// are from the last column of the file are available in a map with the attribute name as
		// the key.   For example:
		//
		//     Item feature = getFeature();
		//     String symbol = record.getAttributes().get("symbol");
		//     feature.setAttrinte("symbol", symbol);
		//
		// Any new Items created can be stored by calling addItem().  For example:
		// 
		//     String geneIdentifier = record.getAttributes().get("gene");
		//     gene = createItem("Gene");
		//     gene.setAttribute("primaryIdentifier", geneIdentifier);
		//     addItem(gene);
		//
		// You should make sure that new Items you create are unique, i.e. by storing in a map by
		// some identifier. 

		Item feature = getFeature();

		// going to be either gene or CDS
		String type = record.getType();

		if ("gene".equals(type)) {
			List<String> xrefs = record.getDbxrefs();
			// where to put the locus. by default put in primary. sometimes put in secondary
			String locusIdentifier = "primaryIdentifier";
			String primaryIdentifier = null;
			if (xrefs != null && !xrefs.isEmpty()) {
				Iterator<String> it = xrefs.iterator();
				while (it.hasNext()) {
					String xref = it.next();
					String[] bits = xref.split(":");
					if (bits != null && bits.length == 2) {
						String db = bits[0];
						primaryIdentifier = bits[1];
						if ("EcoGene".equals(db)) {
							feature.setAttribute("primaryIdentifier", primaryIdentifier);
							locusIdentifier = "secondaryIdentifier";
						}
					}
				}
			}

			// no dbxref=EcoGene, use locus
			List<String> locus = record.getAttributes().get("locus_tag");
			if (locus != null && !locus.isEmpty()) {
				Iterator<String> it = locus.iterator();
				primaryIdentifier = it.next();
				feature.setAttribute(locusIdentifier, primaryIdentifier);
			}

			// name
			List<String> names = record.getNames();
			if (names != null && !names.isEmpty()) {
				Iterator<String> it = names.iterator();
				String name = it.next();
				feature.setAttribute("symbol", name);
			}

//			List<String> synonyms = record.getAttributes().get("gene_synonym");
//			if (synonyms != null && !synonyms.isEmpty()) {
//				Iterator<String> it = synonyms.iterator();
//				while(it.hasNext()) {
//					String synonymValue = it.next();
//					Item synonym = converter.createItem("Synonym");
//					synonym.setAttribute("value", synonymValue);
//					feature.addToCollection("synonyms", synonym);
//					addItem(synonym);
//				}
//			}

			String id = record.getId();
			geneIdToPrimaryIdentifier.put(id, feature.getIdentifier());
		} else if ("CDS".equals(type)) {
			List<String> names = record.getAttributes().get("Name");
			if (!names.isEmpty()) {
				Iterator<String> it = names.iterator();
				String primaryIdentifier = it.next(); 
				feature.setAttribute("primaryIdentifier", primaryIdentifier);
			}
			
			List<String> parents = record.getParents();
			Iterator<String> it = parents.iterator();
			// gene0
			String parentId = it.next();
			// get the ID of the gene that was stored to the database
			String refId = geneIdToPrimaryIdentifier.get(parentId);
			feature.setReference("gene", refId);
		}
	}
}
