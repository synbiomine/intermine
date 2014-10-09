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

import java.util.List;

import org.intermine.bio.dataconversion.GFF3RecordHandler;
import org.intermine.bio.io.gff3.GFF3Record;
import org.intermine.metadata.Model;
import org.intermine.xml.full.Item;

/**
 * A converter/retriever for the SynbioGff dataset via GFF files.
 */

public class SynbioGffGFF3RecordHandler extends GFF3RecordHandler
{

    /**
     * Create a new SynbioGffGFF3RecordHandler for the given data model.
     * @param model the model for which items will be created
     */
    public SynbioGffGFF3RecordHandler (Model model) {
        super(model);
        refsAndCollections.put("gene", "CDS");
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
    		// do nothing for now because we think config is going to be fine
    	} else if ("CDS".equals(type)) {
    		List<String> names = record.getAttributes().get("Name");
    		if (!names.isEmpty()) {
    			String primaryIdentifier = names.get(0);
    			feature.setAttribute("primaryIdentifier", primaryIdentifier);
    		}
    	}
    }
}
