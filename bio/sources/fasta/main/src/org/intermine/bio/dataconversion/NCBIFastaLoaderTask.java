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

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.log4j.Logger;
import org.biojava.bio.seq.Sequence;

/**
 * A loader that works for FASTA files with an NCBI formatted header:
 * http://www.ncbi.nlm.nih.gov/blast/fasta.shtml
 * http://en.wikipedia.org/wiki/Fasta_format
 * @author Kim Rutherford
 */
public class NCBIFastaLoaderTask extends FastaLoaderTask
{
    protected static final Logger LOG = Logger.getLogger(NCBIFastaLoaderTask.class);

    private static final Pattern NCBI_DB_PATTERN =
//        Pattern.compile("^gi\\|([^\\|]*)\\|(gb|emb|dbj|ref)\\|([^\\|]*?)(\\.\\d+)?\\|.*");
    Pattern.compile("^gi\\|([^\\|]*)\\|(gb|emb|dbj|ref)\\|([^\\|]*?)(\\.\\d+\\.?(\\d+)?)?\\|.*");

    // private static final Pattern PROT_DB_PATTERN =
    //    Pattern.compile("^(ref|pir|prf)\\|([^\\|]*)\\|([^\\|]*).*");

    private static final Pattern UNIPROT_PATTERN =
        Pattern.compile("^([^\\|]+)\\|([^\\|\\s]*).*");

// Update to NCBI fasta header format. Old style: gi|255767013|ref|NC_000964.3| 
// New header format:  NC_000964.3
// Pattern should match NC_digits.digit(s)
    private static final Pattern NCBI_NEW_DB_PATTERN =
	Pattern.compile("^(\\w+\\d+)?(\\.?\\d+)?\\s?");
//	Pattern.compile("^(\\w+\\d+\\.?(\\d+)?)\\s?");
//        Pattern ("^(\w+\d+\.?(\d+)?)?\s");



    /**
     * {@inheritDoc}
     */
    @Override
    protected String getIdentifier(Sequence bioJavaSequence) {
        String seqIdentifier = bioJavaSequence.getName();

        Matcher ncbiMatcher = NCBI_DB_PATTERN.matcher(seqIdentifier);
        if (ncbiMatcher.matches()) {
            // pattern such as U00096.2 (group(3): "U00096", group(4): ".2")
            if (ncbiMatcher.group(4) == null) {
                return ncbiMatcher.group(3);
            } else {
                return ncbiMatcher.group(3) + ncbiMatcher.group(4);
            }
        }
	Matcher ncbiNewMatcher = NCBI_NEW_DB_PATTERN.matcher(seqIdentifier);
	if (ncbiNewMatcher.matches()) {
	  // pattern such as U00096.2 (group(1): "U00096", group(2): ".2")
	  if (ncbiNewMatcher.group(2) == null) {
	      return ncbiNewMatcher.group(1);
	  } else {
	      return ncbiNewMatcher.group(1) + ncbiNewMatcher.group(2);
	  }
	}
        Matcher uniprotMatcher = UNIPROT_PATTERN.matcher(seqIdentifier);
        if (uniprotMatcher.matches()) {
            return uniprotMatcher.group(2);
        }

        throw new RuntimeException("can't parse FASTA identifier: " + seqIdentifier);

    }
}
