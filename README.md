# aiQTL

Dependencies:
The VGAM package

Usage: 
Rscript aiQTL <xfile> <nfile> <gfile> <targets>

Where xfile contains the number of reads mapped to one allele of the genes on the rows for each sample on the columns nfile contains the total number of allele-specifically mapped reads (again genes on rows samples on columns) gfile contains the genotypes (0,1,2) of each individual (on the columns) for each SNP (in the rows) targets contains the SNP-gene pairs to be tested (each row contains a SNPID followed by a gene ID) Data in all the input files should be tab-separated

To run the sample data:
Rscript aiQTL xsample nsample gsample targetSample

File formats:
All inputs are tab separated text files. xfile, nfile and gfile contain a header line with individual IDs. The first column of subsequent lines contains gene identifiers (xfile and nfile) or SNPs (gfile).

aiQTL fits a mixture of two symmetric beta-binomial random variables to allele-specific read count data and uses this as a basis for a test of association between the genotype of a genetic variant (the putative aiQTL) and the extent of allelic imbalance of the target gene.

To do this it compares the fit of a null model, M0, in which the mixture weights are shared by all samples to the alternative model, M1, in which the weight of mixture component 1 (and hence also of component 2) differs between genotypic groups. By default the genotypic grouping is homozygotes versus heterozygotes, but the code can easily be modified to group genotypes in other ways.
