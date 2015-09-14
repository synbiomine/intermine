<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="im"%>


<!-- dataCategories -->

<html:xhtml/>

<div class="body">
<im:boxarea title="Data" stylename="plainbox"><p>SynBioMine integrates data from a large number of sources into a single data warehouse.  This page lists the data that are included in the current release.  Many more data sets will be added in future releases, please contact us if there are any particular data you would like to see included.</p></im:boxarea>


<div style="padding: 10px 40px">
<h3>The following data are loaded in SynBioMine:</h3>

<br/>

<table>
       <tr>
               <th>Type</th>
               <th>Source</th>
               <th>Organisms</th>
               <th>Version</th>
       </tr>
       <tr>
               <td>Genome sequence</td>
               <td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/bacteria/">NCBI Genomes</a></td>
               <td><i>Bacillus amyloliquefaciens</i> DSM 7, <i>Bacillus amyloliquefaciens</i> subsp. plantarum str. FZB42, <i>Bacillus anthracis</i> str. Ames, <i>Bacillus anthracis</i> str. Sterne, <i>Bacillus atrophaeus</i> 1942, <i>Bacillus cellulosilyticus</i> DSM 2522, <i>Bacillus cereus</i> AH621, <i>Bacillus cereus</i> ATCC 14579, <i>Bacillus cereus</i> Rock4-18, <i>Bacillus clausii</i> KSM-K16, <i>Bacillus coagulans</i> 2-6, <i>Bacillus coagulans</i> 36D1, <i>Bacillus cytotoxicus</i> NVH 391-98, <i>Bacillus halodurans</i> C-125, <i>Bacillus infantis</i> NRRL B-14911, <i>Bacillus lehensis</i> G1, <i>Bacillus licheniformis</i> DSM 13 = ATCC 14580, <i>Bacillus megaterium</i> DSM 319, <i>Bacillus methanolicus</i> MGA3, <i>Bacillus mycoides</i> Rock1-4, <i>Bacillus pseudofirmus</i> OF4, <i>Bacillus pumilus</i> SAFR-032, <i>[Bacillus] selenitireducens</i> MLS10, <i>Bacillus</i> sp. 1NLA3E, <i>Bacillus subtilis</i> subsp. spizizenii TU-B-10, <i>Bacillus subtilis</i> subsp. subtilis str. 168, <i>Bacillus thuringiensis</i> serovar konkukian str. 97-27, <i>Bacillus weihenstephanensis</i> KBAB4, <i>Escherichia coli</i> IAI39, <i>Escherichia coli</i> O104:H4 str. 2011C-3493, <i>Escherichia coli</i> O157:H7 str. Sakai, <i>Escherichia coli</i> O83:H1 str. NRG 857C, <i>Escherichia coli</i> UMN026, <i>Escherichia coli</i> str. K-12 substr. MG1655, <i>Geobacillus kaustophilus</i> HTA426, <i>Geobacillus</i> sp. C56-T3, <i>Geobacillus</i> sp. WCH70, <i>Geobacillus</i> sp. Y4.1MC1, <i>Geobacillus</i> sp. Y412MC52, <i>Geobacillus</i> sp. Y412MC61, <i>Geobacillus stearothermophilus</i> NUB3621, <i>Geobacillus thermodenitrificans</i> NG80-2, <i>Geobacillus thermoglucosidasius</i> C56-YS93, <i>Geobacillus thermoleovorans</i> CCB_US3_UF5</td>
               <td>NCBI RefSeq Release 70 (March 2015)</td>
       </tr>
       <tr>
               <td>Gene names, symbol and annotation</td>
               <td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/bacteria/">RefSeq</a></td>
               <td><i>Bacillus amyloliquefaciens</i> DSM 7, <i>Bacillus amyloliquefaciens</i> subsp. plantarum str. FZB42, <i>Bacillus anthracis</i> str. Ames, <i>Bacillus anthracis</i> str. Sterne, <i>Bacillus atrophaeus</i> 1942, <i>Bacillus cellulosilyticus</i> DSM 2522, <i>Bacillus cereus</i> AH621, <i>Bacillus cereus</i> ATCC 14579, <i>Bacillus cereus</i> Rock4-18, <i>Bacillus clausii</i> KSM-K16, <i>Bacillus coagulans</i> 2-6, <i>Bacillus coagulans</i> 36D1, <i>Bacillus cytotoxicus</i> NVH 391-98, <i>Bacillus halodurans</i> C-125, <i>Bacillus infantis</i> NRRL B-14911, <i>Bacillus lehensis</i> G1, <i>Bacillus licheniformis</i> DSM 13 = ATCC 14580, <i>Bacillus megaterium</i> DSM 319, <i>Bacillus methanolicus</i> MGA3, <i>Bacillus mycoides</i> Rock1-4, <i>Bacillus pseudofirmus</i> OF4, <i>Bacillus pumilus</i> SAFR-032, <i>[Bacillus] selenitireducens</i> MLS10, <i>Bacillus</i> sp. 1NLA3E, <i>Bacillus subtilis</i> subsp. spizizenii TU-B-10, <i>Bacillus subtilis</i> subsp. subtilis str. 168, <i>Bacillus thuringiensis</i> serovar konkukian str. 97-27, <i>Bacillus weihenstephanensis</i> KBAB4, <i>Escherichia coli</i> IAI39, <i>Escherichia coli</i> O104:H4 str. 2011C-3493, <i>Escherichia coli</i> O157:H7 str. Sakai, <i>Escherichia coli</i> O83:H1 str. NRG 857C, <i>Escherichia coli</i> UMN026, <i>Escherichia coli</i> str. K-12 substr. MG1655, <i>Geobacillus kaustophilus</i> HTA426, <i>Geobacillus</i> sp. C56-T3, <i>Geobacillus</i> sp. WCH70, <i>Geobacillus</i> sp. Y4.1MC1, <i>Geobacillus</i> sp. Y412MC52, <i>Geobacillus</i> sp. Y412MC61, <i>Geobacillus stearothermophilus</i> NUB3621, <i>Geobacillus thermodenitrificans</i> NG80-2, <i>Geobacillus thermoglucosidasius</i> C56-YS93, <i>Geobacillus thermoleovorans</i> CCB_US3_UF5</td>
               <td>NCBI RefSeq Release 70 (March 2015)</td>
       </tr>
       <tr>
               <td>Protein sequence and annotation</a></td>
               <td><a href="http://www.uniprot.org/">UniProt</a></td>
               <td><i>Bacillus amyloliquefaciens</i> DSM 7, <i>Bacillus amyloliquefaciens</i> subsp. plantarum str. FZB42, <i>Bacillus anthracis</i> str. Ames, <i>Bacillus anthracis</i> str. Sterne, <i>Bacillus atrophaeus</i> 1942, <i>Bacillus cellulosilyticus</i> DSM 2522, <i>Bacillus cereus</i> AH621, <i>Bacillus cereus</i> ATCC 14579, <i>Bacillus cereus</i> Rock4-18, <i>Bacillus clausii</i> KSM-K16, <i>Bacillus coagulans</i> 2-6, <i>Bacillus coagulans</i> 36D1, <i>Bacillus cytotoxicus</i> NVH 391-98, <i>Bacillus halodurans</i> C-125, <i>Bacillus infantis</i> NRRL B-14911, <i>Bacillus lehensis</i> G1, <i>Bacillus licheniformis</i> DSM 13 = ATCC 14580, <i>Bacillus megaterium</i> DSM 319, <i>Bacillus methanolicus</i> MGA3, <i>Bacillus mycoides</i> Rock1-4, <i>Bacillus pseudofirmus</i> OF4, <i>Bacillus pumilus</i> SAFR-032, <i>[Bacillus] selenitireducens</i> MLS10, <i>Bacillus</i> sp. 1NLA3E, <i>Bacillus subtilis</i> subsp. spizizenii TU-B-10, <i>Bacillus subtilis</i> subsp. subtilis str. 168, <i>Bacillus thuringiensis</i> serovar konkukian str. 97-27, <i>Bacillus weihenstephanensis</i> KBAB4, <i>Escherichia coli</i> IAI39, <i>Escherichia coli</i> O104:H4 str. 2011C-3493, <i>Escherichia coli</i> O157:H7 str. Sakai, <i>Escherichia coli</i> O83:H1 str. NRG 857C, <i>Escherichia coli</i> UMN026, <i>Escherichia coli</i> str. K-12 substr. MG1655, <i>Geobacillus kaustophilus</i> HTA426, <i>Geobacillus</i> sp. C56-T3, <i>Geobacillus</i> sp. WCH70, <i>Geobacillus</i> sp. Y4.1MC1, <i>Geobacillus</i> sp. Y412MC52, <i>Geobacillus</i> sp. Y412MC61, <i>Geobacillus stearothermophilus</i> NUB3621, <i>Geobacillus thermodenitrificans</i> NG80-2, <i>Geobacillus thermoglucosidasius</i> C56-YS93, <i>Geobacillus thermoleovorans</i> CCB_US3_UF5</td>
               <td>UniProt Release 2015_07 (June 2015)</td>
       </tr>
       <tr>
               <td>Protein domains</td>
               <td><a href="http://www.ebi.ac.uk/interpro/">InterPro</a></td>
               <td><i>Bacillus amyloliquefaciens</i> DSM 7, <i>Bacillus amyloliquefaciens</i> subsp. plantarum str. FZB42, <i>Bacillus anthracis</i> str. Ames, <i>Bacillus anthracis</i> str. Sterne, <i>Bacillus atrophaeus</i> 1942, <i>Bacillus cellulosilyticus</i> DSM 2522, <i>Bacillus cereus</i> AH621, <i>Bacillus cereus</i> ATCC 14579, <i>Bacillus cereus</i> Rock4-18, <i>Bacillus clausii</i> KSM-K16, <i>Bacillus coagulans</i> 2-6, <i>Bacillus coagulans</i> 36D1, <i>Bacillus cytotoxicus</i> NVH 391-98, <i>Bacillus halodurans</i> C-125, <i>Bacillus infantis</i> NRRL B-14911, <i>Bacillus lehensis</i> G1, <i>Bacillus licheniformis</i> DSM 13 = ATCC 14580, <i>Bacillus megaterium</i> DSM 319, <i>Bacillus methanolicus</i> MGA3, <i>Bacillus mycoides</i> Rock1-4, <i>Bacillus pseudofirmus</i> OF4, <i>Bacillus pumilus</i> SAFR-032, <i>[Bacillus] selenitireducens</i> MLS10, <i>Bacillus</i> sp. 1NLA3E, <i>Bacillus subtilis</i> subsp. spizizenii TU-B-10, <i>Bacillus subtilis</i> subsp. subtilis str. 168, <i>Bacillus thuringiensis</i> serovar konkukian str. 97-27, <i>Bacillus weihenstephanensis</i> KBAB4, <i>Escherichia coli</i> IAI39, <i>Escherichia coli</i> O104:H4 str. 2011C-3493, <i>Escherichia coli</i> O157:H7 str. Sakai, <i>Escherichia coli</i> O83:H1 str. NRG 857C, <i>Escherichia coli</i> UMN026, <i>Escherichia coli</i> str. K-12 substr. MG1655, <i>Geobacillus kaustophilus</i> HTA426, <i>Geobacillus</i> sp. C56-T3, <i>Geobacillus</i> sp. WCH70, <i>Geobacillus</i> sp. Y4.1MC1, <i>Geobacillus</i> sp. Y412MC52, <i>Geobacillus</i> sp. Y412MC61, <i>Geobacillus stearothermophilus</i> NUB3621, <i>Geobacillus thermodenitrificans</i> NG80-2, <i>Geobacillus thermoglucosidasius</i> C56-YS93, <i>Geobacillus thermoleovorans</i> CCB_US3_UF5</td>
               <td>InterPro 52.0 (May 2015)</td>
       </tr>
       <tr>
               <td>Gene Ontology</td>
               <td><a href="http://www.uniprot.org/">UniProt</a></td>
               <td><i>Bacillus amyloliquefaciens</i> DSM 7, <i>Bacillus amyloliquefaciens</i> subsp. plantarum str. FZB42, <i>Bacillus anthracis</i> str. Ames, <i>Bacillus anthracis</i> str. Sterne, <i>Bacillus atrophaeus</i> 1942, <i>Bacillus cellulosilyticus</i> DSM 2522, <i>Bacillus cereus</i> AH621, <i>Bacillus cereus</i> ATCC 14579, <i>Bacillus cereus</i> Rock4-18, <i>Bacillus clausii</i> KSM-K16, <i>Bacillus coagulans</i> 2-6, <i>Bacillus coagulans</i> 36D1, <i>Bacillus cytotoxicus</i> NVH 391-98, <i>Bacillus halodurans</i> C-125, <i>Bacillus infantis</i> NRRL B-14911, <i>Bacillus lehensis</i> G1, <i>Bacillus licheniformis</i> DSM 13 = ATCC 14580, <i>Bacillus megaterium</i> DSM 319, <i>Bacillus methanolicus</i> MGA3, <i>Bacillus mycoides</i> Rock1-4, <i>Bacillus pseudofirmus</i> OF4, <i>Bacillus pumilus</i> SAFR-032, <i>[Bacillus] selenitireducens</i> MLS10, <i>Bacillus</i> sp. 1NLA3E, <i>Bacillus subtilis</i> subsp. spizizenii TU-B-10, <i>Bacillus subtilis</i> subsp. subtilis str. 168, <i>Bacillus thuringiensis</i> serovar konkukian str. 97-27, <i>Bacillus weihenstephanensis</i> KBAB4, <i>Escherichia coli</i> IAI39, <i>Escherichia coli</i> O104:H4 str. 2011C-3493, <i>Escherichia coli</i> O157:H7 str. Sakai, <i>Escherichia coli</i> O83:H1 str. NRG 857C, <i>Escherichia coli</i> UMN026, <i>Escherichia coli</i> str. K-12 substr. MG1655, <i>Geobacillus kaustophilus</i> HTA426, <i>Geobacillus</i> sp. C56-T3, <i>Geobacillus</i> sp. WCH70, <i>Geobacillus</i> sp. Y4.1MC1, <i>Geobacillus</i> sp. Y412MC52, <i>Geobacillus</i> sp. Y412MC61, <i>Geobacillus stearothermophilus</i> NUB3621, <i>Geobacillus thermodenitrificans</i> NG80-2, <i>Geobacillus thermoglucosidasius</i> C56-YS93, <i>Geobacillus thermoleovorans</i> CCB_US3_UF5</td>
               <td>UniProt Release 2015_07 (June 2015)</td>
       </tr>
       <tr>
               <td>Pathways</td>
               <td><a href="www.genome.jp/kegg/pathway.html">KEGG</a></td>
               <td><i>Bacillus amyloliquefaciens</i> DSM 7, <i>Bacillus amyloliquefaciens</i> subsp. plantarum str. FZB42, <i>Bacillus anthracis</i> str. Ames, <i>Bacillus anthracis</i> str. Sterne, <i>Bacillus atrophaeus</i> 1942, <i>Bacillus cellulosilyticus</i> DSM 2522, <i>Bacillus cereus</i> AH621, <i>Bacillus cereus</i> ATCC 14579, <i>Bacillus cereus</i> Rock4-18, <i>Bacillus clausii</i> KSM-K16, <i>Bacillus coagulans</i> 2-6, <i>Bacillus coagulans</i> 36D1, <i>Bacillus cytotoxicus</i> NVH 391-98, <i>Bacillus halodurans</i> C-125, <i>Bacillus infantis</i> NRRL B-14911, <i>Bacillus lehensis</i> G1, <i>Bacillus licheniformis</i> DSM 13 = ATCC 14580, <i>Bacillus megaterium</i> DSM 319, <i>Bacillus methanolicus</i> MGA3, <i>Bacillus mycoides</i> Rock1-4, <i>Bacillus pseudofirmus</i> OF4, <i>Bacillus pumilus</i> SAFR-032, <i>[Bacillus] selenitireducens</i> MLS10, <i>Bacillus</i> sp. 1NLA3E, <i>Bacillus subtilis</i> subsp. spizizenii TU-B-10, <i>Bacillus subtilis</i> subsp. subtilis str. 168, <i>Bacillus thuringiensis</i> serovar konkukian str. 97-27, <i>Bacillus weihenstephanensis</i> KBAB4, <i>Escherichia coli</i> IAI39, <i>Escherichia coli</i> O104:H4 str. 2011C-3493, <i>Escherichia coli</i> O157:H7 str. Sakai, <i>Escherichia coli</i> O83:H1 str. NRG 857C, <i>Escherichia coli</i> UMN026, <i>Escherichia coli</i> str. K-12 substr. MG1655, <i>Geobacillus kaustophilus</i> HTA426, <i>Geobacillus</i> sp. C56-T3, <i>Geobacillus</i> sp. WCH70, <i>Geobacillus</i> sp. Y4.1MC1, <i>Geobacillus</i> sp. Y412MC52, <i>Geobacillus</i> sp. Y412MC61, <i>Geobacillus stearothermophilus</i> NUB3621, <i>Geobacillus thermodenitrificans</i> NG80-2, <i>Geobacillus thermoglucosidasius</i> C56-YS93, <i>Geobacillus thermoleovorans</i> CCB_US3_UF5</td>
               <td>Release 75.0 (July 2015)</td>
       </tr>
       <tr>
               <td>Interactions</td>
               <td><a href="http://thebiogrid.org/">BioGRID</a></td>
               <td><i>B. subtilis</i> (168)</td>
               <td>Version 3.4.126 (July 2015)</td>
       </tr>
       <tr>
               <td>Regulatory features (promoters, operons)</td>
               <td><a href="http://dbtbs.hgc.jp">DBTBS</a>; Nicolas et al. (2012: PMID: 22383849)</td>
               <td><i>Bacillus subtilis</i> subsp. subtilis str. 168</td>
               <td>Mar, 2008; 2012</td>
       </tr>
       <tr>
               <td>Whole-genome biomodel (Modifiers, Pathways, Reactions, Compounds)</td>
               <td><a href="www.ebi.ac.uk/biomodels-main/path2models">Path2Model</a><a href="www.genome.jp/kegg/pathway.html">; KEGG (reactions)</a></td>
               <td><i>Bacillus subtilis</i> subsp. subtilis str. 168, <i>Escherichia coli</i> str. K-12 substr. MG1655</td>
               <td>Mar, 2013</td>
       </tr>
       <tr>
               <td>Whole-genome expression - <i>B. subtilis</i> 168</td>
               <td><a href="http://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE27219">GEO series data set GSE27219</a> (The condition-dependent transcriptome of Bacillus subtilis 168)</td>
               <td><i>Bacillus subtilis</i> subsp. subtilis str. 168</td>
               <td>Aug, 2014</td>
       </tr>
       <tr>
               <td>Whole-genome expression - <i>E. coli</i> K-12 MG1655</td>
               <td><a href="http://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE6836">GEO series data set GSE6836</a> (Large-Scale Mapping and Validation of E. coli Transcriptional Regulation from a Compendium of Expression Profiles)</td>
               <td><i>Escherichia coli</i> str. K-12 substr. MG1655</td>
               <td>Jan, 2007</td>
       </tr>
       <tr>
               <td>Functional Classification</td>
               <td><a href="http://eggnog.embl.de/">EggNOG</a></td>
               <td><i>Bacillus amyloliquefaciens</i> DSM 7, <i>Bacillus amyloliquefaciens</i> subsp. plantarum str. FZB42, <i>Bacillus anthracis</i> str. Ames, <i>Bacillus anthracis</i> str. Sterne, <i>Bacillus atrophaeus</i> 1942, <i>Bacillus cellulosilyticus</i> DSM 2522, <i>Bacillus cereus</i> AH621, <i>Bacillus cereus</i> ATCC 14579, <i>Bacillus cereus</i> Rock4-18, <i>Bacillus clausii</i> KSM-K16, <i>Bacillus coagulans</i> 2-6, <i>Bacillus coagulans</i> 36D1, <i>Bacillus cytotoxicus</i> NVH 391-98, <i>Bacillus halodurans</i> C-125, <i>Bacillus infantis</i> NRRL B-14911, <i>Bacillus lehensis</i> G1, <i>Bacillus licheniformis</i> DSM 13 = ATCC 14580, <i>Bacillus megaterium</i> DSM 319, <i>Bacillus methanolicus</i> MGA3, <i>Bacillus mycoides</i> Rock1-4, <i>Bacillus pseudofirmus</i> OF4, <i>Bacillus pumilus</i> SAFR-032, <i>[Bacillus] selenitireducens</i> MLS10, <i>Bacillus</i> sp. 1NLA3E, <i>Bacillus subtilis</i> subsp. spizizenii TU-B-10, <i>Bacillus subtilis</i> subsp. subtilis str. 168, <i>Bacillus thuringiensis</i> serovar konkukian str. 97-27, <i>Bacillus weihenstephanensis</i> KBAB4, <i>Escherichia coli</i> IAI39, <i>Escherichia coli</i> O104:H4 str. 2011C-3493, <i>Escherichia coli</i> O157:H7 str. Sakai, <i>Escherichia coli</i> O83:H1 str. NRG 857C, <i>Escherichia coli</i> UMN026, <i>Escherichia coli</i> str. K-12 substr. MG1655, <i>Geobacillus kaustophilus</i> HTA426, <i>Geobacillus</i> sp. C56-T3, <i>Geobacillus</i> sp. WCH70, <i>Geobacillus</i> sp. Y4.1MC1, <i>Geobacillus</i> sp. Y412MC52, <i>Geobacillus</i> sp. Y412MC61, <i>Geobacillus stearothermophilus</i> NUB3621, <i>Geobacillus thermodenitrificans</i> NG80-2, <i>Geobacillus thermoglucosidasius</i> C56-YS93, <i>Geobacillus thermoleovorans</i> CCB_US3_UF5</td>
               <td>v4.0 - Mar, 2014</td>
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
               <td><i>Bacillus amyloliquefaciens</i> subsp. plantarum str. FZB42, <i>Bacillus anthracis</i> str. Ames, <i>Bacillus anthracis</i> str. Sterne, <i>Bacillus atrophaeus</i> 1942, <i>Bacillus cellulosilyticus</i> DSM 2522, <i>Bacillus cereus</i> ATCC 14579, <i>Bacillus clausii</i> KSM-K16, <i>Bacillus coagulans</i> 2-6, <i>Bacillus cytotoxicus</i> NVH 391-98, <i>Bacillus halodurans</i> C-125, <i>Bacillus infantis</i> NRRL B-14911, <i>Bacillus licheniformis</i> DSM 13 = ATCC 14580, <i>Bacillus megaterium</i> DSM 319, <i>Bacillus pseudofirmus</i> OF4, <i>Bacillus pseudomycoides</i> DSM 12442, <i>Bacillus pumilus</i> SAFR-032, <i>[Bacillus] selenitireducens</i> MLS10, <i>Bacillus</i> sp. 1NLA3E, <i>Bacillus subtilis</i> subsp. subtilis str. 168, <i>Bacillus thuringiensis</i> serovar konkukian str. 97-27, <i>Bacillus weihenstephanensis</i> KBAB4, <i>Escherichia coli</i> IAI39, <i>Escherichia coli</i> O104:H4 str. 2011C-3493, <i>Escherichia coli</i> O157:H7 str. Sakai, <i>Escherichia coli</i> O83:H1 str. NRG 857C, <i>Escherichia coli</i> UMN026, <i>Escherichia coli</i> str. K-12 substr. MG1655, <i>Escherichia fergusonii</i> ATCC 35469, <i>Geobacillus kaustophilus</i> HTA426, <i>Geobacillus</i> sp. C56-T3, <i>Geobacillus</i> sp. WCH70, <i>Geobacillus</i> sp. Y4.1MC1, <i>Geobacillus</i> sp. Y412MC52, <i>Geobacillus</i> sp. Y412MC61, <i>Geobacillus thermodenitrificans</i> NG80-2, <i>Geobacillus thermoglucosidasius</i> C56-YS93, <i>Geobacillus thermoleovorans</i> CCB_US3_UF5</td>
               <td>Jul, 2015</td>
       </tr>
</table>

</div>
</div>
<!-- /dataCategories -->
