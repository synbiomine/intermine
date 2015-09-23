<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="im"%>


<!-- dataCategories -->

<html:xhtml/>

<div class="body">
<im:boxarea title="Data" stylename="plainbox"><p>SynBioMine integrates data from a large number of sources into a single data warehouse.  This page lists the data that are included in the current release.  Many more data sets will be added in future releases, please contact us if there are any particular data you would like to see included.</p></im:boxarea>

<im:boxarea title="Organisms" stylename="plainbox">
<p>Unless otherwise specified, the following organisms are loaded for each data source below.</p>
<ul>
  <li><i>Bacillus amyloliquefaciens</i> DSM 7</li>
  <li><i>Bacillus amyloliquefaciens</i> subsp. plantarum str. FZB42</li>
  <li><i>Bacillus anthracis</i> str. Ames</li>
  <li><i>Bacillus anthracis</i> str. Sterne</li>
  <li><i>Bacillus atrophaeus</i> 1942</li>
  <li><i>Bacillus cellulosilyticus</i> DSM 2522</li>
  <li><i>Bacillus cereus</i> AH621</li>
  <li><i>Bacillus cereus</i> ATCC 14579</li>
  <li><i>Bacillus cereus</i> Rock4-18</li>
  <li><i>Bacillus clausii</i> KSM-K16</li>
  <li><i>Bacillus coagulans</i> 2-6</li>
  <li><i>Bacillus coagulans</i> 36D1</li>
  <li><i>Bacillus cytotoxicus</i> NVH 391-98</li>
  <li><i>Bacillus halodurans</i> C-125</li>
  <li><i>Bacillus infantis</i> NRRL B-14911</li>
  <li><i>Bacillus lehensis</i> G1</li>
  <li><i>Bacillus licheniformis</i> DSM 13 = ATCC 14580</li>
  <li><i>Bacillus megaterium</i> DSM 319</li>
  <li><i>Bacillus methanolicus</i> MGA3</li>
  <li><i>Bacillus mycoides</i> Rock1-4</li>
  <li><i>Bacillus pseudofirmus</i> OF4</li>
  <li><i>Bacillus pumilus</i> SAFR-032</li>
  <li><i>[Bacillus] selenitireducens</i> MLS10</li>
  <li><i>Bacillus</i> sp. 1NLA3E</li>
  <li><i>Bacillus subtilis</i> subsp. spizizenii TU-B-10</li>
  <li><i>Bacillus subtilis</i> subsp. subtilis str. 168</li>
  <li><i>Bacillus thuringiensis</i> serovar konkukian str. 97-27</li>
  <li><i>Bacillus weihenstephanensis</i> KBAB4</li>
  <li><i>Escherichia coli</i> IAI39</li>
  <li><i>Escherichia coli</i> O104:H4 str. 2011C-3493</li>
  <li><i>Escherichia coli</i> O157:H7 str. Sakai</li>
  <li><i>Escherichia coli</i> O83:H1 str. NRG 857C</li>
  <li><i>Escherichia coli</i> UMN026</li>
  <li><i>Escherichia coli</i> str. K-12 substr. MG1655</li>
  <li><i>Geobacillus kaustophilus</i> HTA426</li>
  <li><i>Geobacillus</i> sp. C56-T3</li>
  <li><i>Geobacillus</i> sp. WCH70</li>
  <li><i>Geobacillus</i> sp. Y4.1MC1</li>
  <li><i>Geobacillus</i> sp. Y412MC52</li>
  <li><i>Geobacillus</i> sp. Y412MC61</li>
  <li><i>Geobacillus stearothermophilus</i> NUB3621</li>
  <li><i>Geobacillus thermodenitrificans</i> NG80-2</li>
  <li><i>Geobacillus thermoglucosidasius</i> C56-YS93</li>
  <li><i>Geobacillus thermoleovorans</i> CCB_US3_UF5</li>
</ul>
</im:boxarea>

<div style="padding: 10px 40px">
<h3>The following data are loaded in SynBioMine:</h3>

<br/>

<table cellpadding="10" border="1">
  <tr>
    <th>Type</th>
    <th>Source</th>
    <th>Organisms</th>
    <th>Version</th>
  </tr>
  <tr>
    <td>Genome sequences</td>
    <td><a href="http://www.ncbi.nlm.nih.gov/refseq/">NCBI Refseq</a></td>
    <td>All</td>
    <td>NCBI RefSeq Release 70 (March 2015)</td>
  </tr>
  <tr>
    <td>Protein sequences and annotations</td>
    <td><a href="http://www.uniprot.org/">UniProt</a></td>
    <td>All</td>
    <td>UniProt Release 2015_07 (June 2015)</td>
  </tr>
  <tr>
    <td>Protein Gene Ontology annotations</td>
    <td><a href="http://www.ebi.ac.uk/GOA">UniProt-GOA</a></td>
    <td>All</td>
    <td>UniProt-GOA Release 20150623 (June 2015)
  </tr>
  <tr>
    <td>Protein domains</td>
    <td><a href="http://www.ebi.ac.uk/interpro/">InterPro</a></td>
    <td>All</td>
    <td>InterPro 52.0 (May 2015)</td>
  </tr>
  <tr>
    <td>Gene Ontology</td>
    <td><a href="http://geneontology.org/">Gene Ontology Consortium</a></td>
    <td>All</td>
    <td>Gene Ontology 2015-06-01 (June 2015)</td>
  </tr>
  <tr>
    <td>Sequence Ontology</td>
    <td><a href="http://www.sequenceontology.org/">The Sequence Ontology Project</a></td>
    <td>All</td>
    <td>2.5 (June 2012)</td>
  </tr>
  <tr>
    <td>Functional Classification</td>
    <td><a href="http://eggnog.embl.de/">EggNOG</a></td>
    <td>All</td>
    <td>v4.0 - Mar, 2014</td>
  </tr>
  <tr>
    <td>Pathways</td>
    <td><a href="http://ecocyc.org/"></a>Ecocyc</a> from Keseler et al. (2013), <a href="http://nar.oxfordjournals.org/content/41/D1/D605">"EcoCyc: fusing model organism databases with systems biology"</a>, Nucleic Acids Research 41: D605-12.</td>
    <td><i>Escherichia coli</i> K-12 substr. MG1655</td>
    <td>Version 19.1 (June 25, 2015)</td>
  </tr>
  <tr>
    <td>Interactions</td>
    <td><a href="http://thebiogrid.org/">BioGRID</a></td>
    <td><i>Escherichia coli</i> K-12 substr. MG1655</td>
    <td>Version 3.4.126 (July 2015)</td>
  </tr>
  <tr>
    <td>Regulatory features (promoters, operons)</td>
    <td><a href="http://dbtbs.hgc.jp">DBTBS</a>; Nicolas et al. (2012), "<a href="http://www.ncbi.nlm.nih.gov/pubmed/22383849">Condition-dependent transcriptome reveals high-level regulatory architecture in Bacillus subtilis.</a>", Science, 2012 Mar 2;335(6072):1103-6, PMID 22383849</td>
    <td><i>Bacillus subtilis</i> subsp. subtilis str. 168</td>
    <td>DBTBS Release 5 (Sept 2007), Nicolas et al March 2012</td>
  </tr>
  <tr>
    <td>Whole-genome expression - <i>B. subtilis</i> 168</td>
    <td><a href="http://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE27219">GEO series data set GSE27219</a>, Nicolas et al. (2012), "<a href="http://www.ncbi.nlm.nih.gov/pubmed/22383849">Condition-dependent transcriptome reveals high-level regulatory architecture in Bacillus subtilis.</a>", Science 2012 Mar 2;335(6072):1103-6. PMID: 22383849</td>
    <td><i>Bacillus subtilis</i> subsp. subtilis str. 168</td>
    <td>Apr 2014</td>
  </tr>
  <tr>
    <td>Whole-genome expression - <i>E. coli</i> K-12 MG1655</td>
    <td><a href="http://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE6836">GEO series data set GSE6836</a>, Faith et al (2007), "<a href="http://www.ncbi.nlm.nih.gov/pubmed/17214507">Large-scale mapping and validation of Escherichia coli transcriptional regulation from a compendium of expression profiles</a>", PLoS Biol 2007 Jan;5(1):e8. PMID: 17214507 (Large-Scale Mapping and Validation of E. coli Transcriptional Regulation from a Compendium of Expression Profiles)</td>
    <td><i>Escherichia coli</i> str. K-12 substr. MG1655</td>
    <td>Jan 2015</td>
  </tr>
  <tr>
    <td>Orthologues</td>
    <td><a href="http://orthodb.org/orthodb7">OrthoDB</a></td>
    <td><i>Bacillus amyloliquefaciens</i> subsp. plantarum str. FZB42, <i>Bacillus anthracis</i> str. Ames, <i>Bacillus anthracis</i> str. Sterne, <i>Bacillus cereus</i> ATCC 14579, <i>Bacillus clausii</i> KSM-K16, <i>Bacillus cytotoxicus</i> NVH 391-98, <i>Bacillus halodurans</i> C-125, <i>Bacillus licheniformis</i> DSM 13 = ATCC 14580, <i>Bacillus pumilus</i> SAFR-032, <i>Bacillus subtilis</i> subsp. subtilis str. 168, <i>Bacillus thuringiensis</i> serovar konkukian str. 97-27, <i>Bacillus weihenstephanensis</i> KBAB4, <i>Escherichia coli</i> IAI39, <i>Escherichia coli</i> UMN026, <i>Escherichia coli</i> str. K-12 substr. MG1655, <i>Escherichia fergusonii</i> ATCC 35469, <i>Geobacillus kaustophilus</i> HTA426, <i>Geobacillus</i> sp. WCH70, <i>Geobacillus</i> sp. Y412MC61, <i>Geobacillus thermodenitrificans</i> NG80-2</td>
    <td>v7 - Aug, 2013</td>
  </tr>
  <tr>
    <td>Publications</td>
    <td><a href="ftp://ftp.ncbi.nih.gov/gene/DATA/">NCBI PubMed (gene to PubMed id mappings)</a></td>
    <td>All</td>
    <td>Jul, 2015</td>
  </tr>
</table>

</div>
</div>
<!-- /dataCategories -->
