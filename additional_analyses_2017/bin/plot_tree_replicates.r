require(phytools)
require(ape)
library(phyloch)

setwd("/Users/tobias/Desktop/figures_topaza_review/snapp/simulated_allele_snps/snapp_10_reps/")
tree1 <- read.beast(file = "sim_allele_snps_rep1.tre")
tree2 <- read.beast(file = "sim_allele_snps_rep2.tre")
tree3 <- read.beast(file = "sim_allele_snps_rep3.tre")
tree4 <- read.beast(file = "sim_allele_snps_rep4.tre")
tree5 <- read.beast(file = "sim_allele_snps_rep5.tre")
tree6 <- read.beast(file = "sim_allele_snps_rep6.tre")
tree7 <- read.beast(file = "sim_allele_snps_rep7.tre")
tree8 <- read.beast(file = "sim_allele_snps_rep8.tre")
tree9 <- read.beast(file = "sim_allele_snps_rep9.tre")
tree10 <- read.beast(file = "sim_allele_snps_rep10.tre")

str(beasttree1)
pdf("test.pdf")
plot(beasttree1, x.lim=c(-0.009, 0.04738))
add.scale.bar()
node.support(beasttree1$posterior,cutoff=0,digits=2)
HPDbars(beasttree1, label = "height_95%_HPD")
dev.off()
?HPDbars()
