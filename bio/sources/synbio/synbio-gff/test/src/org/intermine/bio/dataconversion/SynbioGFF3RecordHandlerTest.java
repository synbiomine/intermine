package org.intermine.bio.dataconversion;

/*
 * Copyright (C) 2002-2014 FlyMine
 *
 * This code may be freely distributed and modified under the
 * terms of the GNU Lesser General Public Licence.  This should
 * be distributed with the code.  See the LICENSE file for more
 * information or http://www.gnu.org/copyleft/lesser.html.
 *
 */

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.StringReader;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Set;

import org.intermine.bio.dataconversion.IdResolverService;
import org.intermine.dataconversion.ItemsTestCase;
import org.intermine.dataconversion.MockItemWriter;
import org.intermine.metadata.Model;
import org.intermine.model.fulldata.Item;

/**
 * Test for data from miRanda
 *
 * @author "Xavier Watkins"
 *
 */
public class SynbioGFF3RecordHandlerTest extends ItemsTestCase
{
	SynbioGFF3RecordHandler handler;

    private Model tgtModel;
    private GFF3Converter converter;
    private MockItemWriter writer = new MockItemWriter(new LinkedHashMap<String, Item>());
    private String seqClsName = "Chromosome";
    private String dataSourceName = "Genbank";
    private String dataSetTitle = "Escherichia coli str. K-12 substr. MG1655 chromosome, complete genome";

    public SynbioGFF3RecordHandlerTest(String arg) {
        super(arg);
    }

    protected void setUp() throws Exception {
        super.setUp();
        tgtModel = Model.getInstanceByName("genomic");
        handler = new SynbioGFF3RecordHandler(tgtModel);
        converter = new GFF3Converter(writer, seqClsName, "511145", dataSourceName,
                                      dataSetTitle, tgtModel, handler, null);
    }

    protected void tearDown() throws Exception {
        converter.close();
    }

    public void testSynbioGFFHandler() throws Exception {

        Reader reader = new InputStreamReader(getClass().getClassLoader()
                .getResourceAsStream("synbio.gff"));
        
        BufferedReader srcReader = new BufferedReader(reader);
        converter.parse(srcReader);
        converter.storeAll();

        // uncomment to write a new tgt items file
        writeItemsFile(writer.getItems(), "synbio-gff-tgt-items.xml");

        Set<org.intermine.xml.full.Item> expected = readItemSet("synbio-gff-tgt-items.xml");
        assertEquals(expected, writer.getItems());
    }

}
