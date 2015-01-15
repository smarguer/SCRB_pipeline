#mv 1_AGGCAGAA_L001_R1_001.fastq 1212_1_R1.fastq 
#mv 1_AGGCAGAA_L001_R2_001.fastq 1212_1_R2.fastq
#mv 2_TCCTGAGC_L001_R1_001.fastq 1212_2_R1.fastq
#mv 2_TCCTGAGC_L001_R2_001.fastq 1212_2_R2.fastq
#mv 3_GGACTCCT_L001_R1_001.fastq 1212_3_R1.fastq
#mv 3_GGACTCCT_L001_R2_001.fastq 1212_3_R2.fastq
#mv 4_TAGGCATG_L001_R1_001.fastq 1212_4_R1.fastq
#mv 4_TAGGCATG_L001_R2_001.fastq 1212_4_R2.fastq

######
perl ../parseINDEX_SCRB.pl 1212_1_R1.fastq 1212_1_R2.fastq MISEQ > index_1212_1

bwa aln ~/smarguer/SAM_GENOMES/ALLchromosomes.090511.chr.fsa index_1212_1_R1.fastq > index_1212_1_R1.sai
bwa samse ~/smarguer/SAM_GENOMES/ALLchromosomes.090511.chr.fsa index_1212_1_R1.sai index_1212_1_R1.fastq > index_1212_1_R1.sam
samtools view -b -S -o index_1212_1_R1.bam index_1212_1_R1.sam
samtools sort index_1212_1_R1.bam index_1212_1_R1.sorted
samtools index index_1212_1_R1.sorted.bam

bwa aln ~/smarguer/SAM_GENOMES/ALLchromosomes.090511.chr.fsa index_1212_1_R2.fastq > index_1212_1_R2.sai
bwa samse ~/smarguer/SAM_GENOMES/ALLchromosomes.090511.chr.fsa index_1212_1_R2.sai index_1212_1_R2.fastq > index_1212_1_R2.sam
samtools view -b -S -o index_1212_1_R2.bam index_1212_1_R2.sam
samtools sort index_1212_1_R2.bam index_1212_1_R2.sorted
samtools index index_1212_1_R2.sorted.bam
######
#######
perl ../parseINDEX_SCRB.pl 1212_2_R1.fastq 1212_2_R2.fastq MISEQ > index_1212_2

bwa aln ~/smarguer/SAM_GENOMES/ALLchromosomes.090511.chr.fsa index_1212_2_R1.fastq > index_1212_2_R1.sai
bwa samse ~/smarguer/SAM_GENOMES/ALLchromosomes.090511.chr.fsa index_1212_2_R1.sai index_1212_2_R1.fastq > index_1212_2_R1.sam
samtools view -b -S -o index_1212_2_R1.bam index_1212_2_R1.sam
samtools sort index_1212_2_R1.bam index_1212_2_R1.sorted
samtools index index_1212_2_R1.sorted.bam

bwa aln ~/smarguer/SAM_GENOMES/ALLchromosomes.090511.chr.fsa index_1212_2_R2.fastq > index_1212_2_R2.sai
bwa samse ~/smarguer/SAM_GENOMES/ALLchromosomes.090511.chr.fsa index_1212_2_R2.sai index_1212_2_R2.fastq > index_1212_2_R2.sam
samtools view -b -S -o index_1212_2_R2.bam index_1212_2_R2.sam
samtools sort index_1212_2_R2.bam index_1212_2_R2.sorted
samtools index index_1212_2_R2.sorted.bam
######

#####
perl ../parseINDEX_SCRB.pl 1212_3_R1.fastq 1212_3_R2.fastq MISEQ > index_1212_3

bwa aln ~/smarguer/SAM_GENOMES/ALLchromosomes.090511.chr.fsa index_1212_3_R1.fastq > index_1212_3_R1.sai
bwa samse ~/smarguer/SAM_GENOMES/ALLchromosomes.090511.chr.fsa index_1212_3_R1.sai index_1212_3_R1.fastq > index_1212_3_R1.sam
samtools view -b -S -o index_1212_3_R1.bam index_1212_3_R1.sam
samtools sort index_1212_3_R1.bam index_1212_3_R1.sorted
samtools index index_1212_3_R1.sorted.bam

bwa aln ~/smarguer/SAM_GENOMES/ALLchromosomes.090511.chr.fsa index_1212_3_R2.fastq > index_1212_3_R2.sai
bwa samse ~/smarguer/SAM_GENOMES/ALLchromosomes.090511.chr.fsa index_1212_3_R2.sai index_1212_3_R2.fastq > index_1212_3_R2.sam
samtools view -b -S -o index_1212_3_R2.bam index_1212_3_R2.sam
samtools sort index_1212_3_R2.bam index_1212_3_R2.sorted
samtools index index_1212_3_R2.sorted.bam
######
######
perl ../parseINDEX_SCRB.pl 1212_4_R1.fastq 1212_4_R2.fastq MISEQ > index_1212_4

bwa aln ~/smarguer/SAM_GENOMES/ALLchromosomes.090511.chr.fsa index_1212_4_R1.fastq > index_1212_4_R1.sai
bwa samse ~/smarguer/SAM_GENOMES/ALLchromosomes.090511.chr.fsa index_1212_4_R1.sai index_1212_4_R1.fastq > index_1212_4_R1.sam
samtools view -b -S -o index_1212_4_R1.bam index_1212_4_R1.sam
samtools sort index_1212_4_R1.bam index_1212_4_R1.sorted
samtools index index_1212_4_R1.sorted.bam

bwa aln ~/smarguer/SAM_GENOMES/ALLchromosomes.090511.chr.fsa index_1212_4_R2.fastq > index_1212_4_R2.sai
bwa samse ~/smarguer/SAM_GENOMES/ALLchromosomes.090511.chr.fsa index_1212_4_R2.sai index_1212_4_R2.fastq > index_1212_4_R2.sam
samtools view -b -S -o index_1212_4_R2.bam index_1212_4_R2.sam
samtools sort index_1212_4_R2.bam index_1212_4_R2.sorted
samtools index index_1212_4_R2.sorted.bam
######




