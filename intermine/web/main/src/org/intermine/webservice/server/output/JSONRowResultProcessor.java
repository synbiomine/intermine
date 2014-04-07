package org.intermine.webservice.server.output;

/*
 * Copyright (C) 2002-2014 FlyMine
 *
 * This code may be freely distributed and modified under the
 * terms of the GNU Lesser General Public Licence.  This should
 * be distributed with the code.  See the LICENSE file for more
 * information or http://www.gnu.org/copyleft/lesser.html.
 *
 */


import java.util.Iterator;
import java.util.List;

import org.intermine.api.InterMineAPI;
import org.intermine.api.results.ExportResultsIterator;
import org.intermine.api.results.ResultElement;

import org.json.JSONArray;

/**
 * A result processor for result rows.
 * @author Alex Kalderimis
 *
 */
public class JSONRowResultProcessor extends JSONResultProcessor
{
    public enum Verbosity {MINIMAL, FULL};
    private final InterMineAPI im;

    private final Verbosity verbosity;
    /**
     * Constructor.
     * @param im The API settings bundle
     */
    public JSONRowResultProcessor(InterMineAPI im) {
        this.im = im;
        verbosity = Verbosity.FULL;
    }

    public JSONRowResultProcessor(InterMineAPI im, Verbosity verbosity) {
        this.im = im;
        this.verbosity = verbosity;
    }

    @Override
    protected Iterator<? extends Object> getResultsIterator(Iterator<List<ResultElement>> it) {
        Iterator<JSONArray> jsonIter;
        if (verbosity == Verbosity.MINIMAL) {
            jsonIter = new MinimalJsonIterator(it, im);
        } else {
            jsonIter = new JSONRowIterator((ExportResultsIterator) it, im);
        }
        return jsonIter;
    }

}
