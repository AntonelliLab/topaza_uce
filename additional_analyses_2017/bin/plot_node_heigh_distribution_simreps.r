setwd("/Users/tobias/GitHub/topaza_uce/additional_analyses_2017/results/node_depth_distribution/10_reps/")
workdir<-getwd()
workdir
dir()

ref_DE<-0.00020020000000000000
ref_YZ<-0.00025410000000000000
ref_XYZ<-0.00035330000000000000
ref_DEXYZ<-0.00083790000000000000

#get all data files ********************************************************************

#read in stacey_sim_allele files
sim_phased_node_heights_DE<-read.csv("xxxxx_allele_alignments/DE_node_depths.txt")
sim_phased_node_heights_YZ<-read.table("xxxxx_allele_alignments/YZ_node_depths.txt")
sim_phased_node_heights_XYZ<-read.csv("xxxxx_allele_alignments/XYZ_node_depths.txt")
sim_phased_node_heights_DEXYZ<-read.csv("xxxxx_allele_alignments/DEXYZ_node_depths.txt")

#read in stacey_sim_contig files
sim_contig_node_heights_DE<-read.csv("xxxxx_consensus_contig_alignments/DE_node_depths.txt")
sim_contig_node_heights_YZ<-read.table("xxxxx_consensus_contig_alignments/YZ_node_depths.txt")
sim_contig_node_heights_XYZ<-read.csv("xxxxx_consensus_contig_alignments/XYZ_node_depths.txt")
sim_contig_node_heights_DEXYZ<-read.csv("xxxxx_consensus_contig_alignments/DEXYZ_node_depths.txt")

#read in stacey_sim_chimeric_alleles files
sim_chimeric_node_heights_DE<-read.csv("xxxxx_chimeric_allele_alignments/DE_node_depths.txt")
sim_chimeric_node_heights_YZ<-read.table("xxxxx_chimeric_allele_alignments/YZ_node_depths.txt")
sim_chimeric_node_heights_XYZ<-read.csv("xxxxx_chimeric_allele_alignments/XYZ_node_depths.txt")
sim_chimeric_node_heights_DEXYZ<-read.csv("xxxxx_chimeric_allele_alignments/DEXYZ_node_depths.txt")

#read in stacey_sim_iupac_consensus files
sim_iupac_contig_node_heights_DE<-read.csv("xxxxx_iupac_consensus_alignments/DE_node_depths.txt")
sim_iupac_contig_node_heights_YZ<-read.table("xxxxx_iupac_consensus_alignments/YZ_node_depths.txt")
sim_iupac_contig_node_heights_XYZ<-read.csv("xxxxx_iupac_consensus_alignments/XYZ_node_depths.txt")
sim_iupac_contig_node_heights_DEXYZ<-read.csv("xxxxx_iupac_consensus_alignments/DEXYZ_node_depths.txt")



#___________________________________________________________________________
#plots of node hgiht distributions
true_col = '#5fa26a'
contig_col = '#ab9039'
allele_col = '#c36456'
chimeric_col = '#c0629a'
iupac_col = '#7980ca'


pdf(file="xxxxx_1_node_height_comparison_DE.pdf",width = 7)
max_value <- max(density(sim_iupac_contig_node_heights_DE[,1])$y)

plot(density(sim_chimeric_node_heights_DE[,1]),xlim=c(0,0.0006),ylim=c(0,max_value),xlab="Node-height",ylab="Density",main='Sim-rep yyyyy: Node-height of clade (D,E)', col = chimeric_col)
polygon(density(sim_chimeric_node_heights_DE[,1]),density = 70, col = chimeric_col)
abline(v=mean(sim_chimeric_node_heights_DE[,1]),lty = 5,lwd = 2, col = chimeric_col)

points(density(sim_iupac_contig_node_heights_DE[,1]), type = 'l', col = iupac_col)
polygon(density(sim_iupac_contig_node_heights_DE[,1]),density = 70, col = iupac_col)
abline(v=mean(sim_iupac_contig_node_heights_DE[,1]),lty = 5,lwd = 2, col = iupac_col)

points(density(sim_contig_node_heights_DE[,1]), type = 'l', col = contig_col)
polygon(density(sim_contig_node_heights_DE[,1]),density = 70, col = contig_col)
abline(v=mean(sim_contig_node_heights_DE[,1]),lty = 5,lwd = 2, col = contig_col)

points(density(sim_phased_node_heights_DE[,1]), type = 'l', col = allele_col)
polygon(density(sim_phased_node_heights_DE[,1]),density = 70, col = allele_col)
abline(v=mean(sim_phased_node_heights_DE[,1]),lty = 5,lwd = 2, col = allele_col)

abline(v=0.00020020000000000000,col = true_col,lwd = 2)
plot_colors <- c(contig_col,allele_col, iupac_col, chimeric_col,true_col)
legend('topright',bty='n',legend = c("contigs","phased alleles","IUPAC consensus","chimeric alleles","'true' value"),col=plot_colors, bg="white", lwd=6, cex=.9, box.lty = 0)

dev.off()


pdf(file="xxxxx_2_node_height_comparison_YZ.pdf",width = 7)
max_value <- max(density(sim_iupac_contig_node_heights_YZ[,1])$y)

plot(density(sim_chimeric_node_heights_YZ[,1]),xlim=c(0,0.0006),ylim=c(0,max_value),xlab="Node-height",ylab="Density",main='Sim-rep yyyyy: Node-height of clade (Y,Z)', col = chimeric_col)
polygon(density(sim_chimeric_node_heights_YZ[,1]),density = 70, col = chimeric_col)
abline(v=mean(sim_chimeric_node_heights_YZ[,1]),lty = 5,lwd = 2, col = chimeric_col)

points(density(sim_iupac_contig_node_heights_YZ[,1]), type = 'l', col = iupac_col)
polygon(density(sim_iupac_contig_node_heights_YZ[,1]),density = 70, col = iupac_col)
abline(v=mean(sim_iupac_contig_node_heights_YZ[,1]),lty = 5,lwd = 2, col = iupac_col)

points(density(sim_contig_node_heights_YZ[,1]), type = 'l', col = contig_col)
polygon(density(sim_contig_node_heights_YZ[,1]),density = 70, col = contig_col)
abline(v=mean(sim_contig_node_heights_YZ[,1]),lty = 5,lwd = 2, col = contig_col)

points(density(sim_phased_node_heights_YZ[,1]), type = 'l', col = allele_col)
polygon(density(sim_phased_node_heights_YZ[,1]),density = 70, col = allele_col)
abline(v=mean(sim_phased_node_heights_YZ[,1]),lty = 5,lwd = 2, col = allele_col)

abline(v=0.00025410000000000000,col = true_col,lwd = 2)
plot_colors <- c(contig_col,allele_col, iupac_col, chimeric_col,true_col)
legend('topright',bty='n',legend = c("contigs","phased alleles","IUPAC consensus","chimeric alleles","'true' value"),col=plot_colors, bg="white", lwd=6, cex=.9, box.lty = 0)

dev.off()


pdf(file="xxxxx_3_node_height_comparison_XYZ.pdf",width = 7)
max_value <- max(density(sim_iupac_contig_node_heights_XYZ[,1])$y)

plot(density(sim_chimeric_node_heights_XYZ[,1]),xlim=c(0,0.0008),ylim=c(0,max_value),xlab="Node-height",ylab="Density",main='Sim-rep yyyyy: Node-height of clade (X,Y,Z)', col = chimeric_col)
polygon(density(sim_chimeric_node_heights_XYZ[,1]),density = 70, col = chimeric_col)
abline(v=mean(sim_chimeric_node_heights_XYZ[,1]),lty = 5,lwd = 2, col = chimeric_col)

points(density(sim_iupac_contig_node_heights_XYZ[,1]), type = 'l', col = iupac_col)
polygon(density(sim_iupac_contig_node_heights_XYZ[,1]),density = 70, col = iupac_col)
abline(v=mean(sim_iupac_contig_node_heights_XYZ[,1]),lty = 5,lwd = 2, col = iupac_col)

points(density(sim_contig_node_heights_XYZ[,1]), type = 'l', col = contig_col)
polygon(density(sim_contig_node_heights_XYZ[,1]),density = 70, col = contig_col)
abline(v=mean(sim_contig_node_heights_XYZ[,1]),lty = 5,lwd = 2, col = contig_col)

points(density(sim_phased_node_heights_XYZ[,1]), type = 'l', col = allele_col)
polygon(density(sim_phased_node_heights_XYZ[,1]),density = 70, col = allele_col)
abline(v=mean(sim_phased_node_heights_XYZ[,1]),lty = 5,lwd = 2, col = allele_col)

abline(v=0.00035330000000000000,col = true_col,lwd = 2)
plot_colors <- c(contig_col,allele_col, iupac_col, chimeric_col,true_col)
legend('topright',bty='n',legend = c("contigs","phased alleles","IUPAC consensus","chimeric alleles","'true' value"),col=plot_colors, bg="white", lwd=6, cex=.9, box.lty = 0)

dev.off()


pdf(file="xxxxx_4_node_height_comparison_DEXYZ.pdf",width = 7)
max_value <- max(density(sim_iupac_contig_node_heights_DEXYZ[,1])$y)

plot(density(sim_chimeric_node_heights_DEXYZ[,1]),xlim=c(0,0.0016),ylim=c(0,max_value),xlab="Node-height",ylab="Density",main='Sim-rep yyyyy: Node-height of clade (D,E,X,Y,Z)', col = chimeric_col)
polygon(density(sim_chimeric_node_heights_DEXYZ[,1]),density = 70, col = chimeric_col)
abline(v=mean(sim_chimeric_node_heights_DEXYZ[,1]),lty = 5,lwd = 2, col = chimeric_col)

points(density(sim_iupac_contig_node_heights_DEXYZ[,1]), type = 'l', col = iupac_col)
polygon(density(sim_iupac_contig_node_heights_DEXYZ[,1]),density = 70, col = iupac_col)
abline(v=mean(sim_iupac_contig_node_heights_DEXYZ[,1]),lty = 5,lwd = 2, col = iupac_col)

points(density(sim_contig_node_heights_DEXYZ[,1]), type = 'l', col = contig_col)
polygon(density(sim_contig_node_heights_DEXYZ[,1]),density = 70, col = contig_col)
abline(v=mean(sim_contig_node_heights_DEXYZ[,1]),lty = 5,lwd = 2, col = contig_col)

points(density(sim_phased_node_heights_DEXYZ[,1]), type = 'l', col = allele_col)
polygon(density(sim_phased_node_heights_DEXYZ[,1]),density = 70, col = allele_col)
abline(v=mean(sim_phased_node_heights_DEXYZ[,1]),lty = 5,lwd = 2, col = allele_col)

abline(v=0.00083790000000000000,col = true_col,lwd = 2)
plot_colors <- c(contig_col,allele_col, iupac_col, chimeric_col,true_col)
legend('topright',bty='n',legend = c("contigs","phased alleles","IUPAC consensus","chimeric alleles","'true' value"),col=plot_colors, bg="white", lwd=6, cex=.9, box.lty = 0)

dev.off()


