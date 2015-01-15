#mv 1_TAAGGCGA_L001_R1_001.fastq 1012_1_R1.fastq
#mv 1_TAAGGCGA_L001_R2_001.fastq 1012_1_R2.fastq
######
perl ../parseINDEX_SCRB.pl 1012_1_R1.fastq 1012_1_R2.fastq MISEQ > index_1012_1

bwa aln ~/smarguer/SAM_GENOMES/ALLchromosomes.090511.chr.fsa index_1012_1_R1.fastq > index_1012_1_R1.sai
bwa samse ~/smarguer/SAM_GENOMES/ALLchromosomes.090511.chr.fsa index_1012_1_R1.sai index_1012_1_R1.fastq > index_1012_1_R1.sam
samtools view -b -S -o index_1012_1_R1.bam index_1012_1_R1.sam
samtools sort index_1012_1_R1.bam index_1012_1_R1.sorted
samtools index index_1012_1_R1.sorted.bam

bwa aln ~/smarguer/SAM_GENOMES/ALLchromosomes.090511.chr.fsa index_1012_1_R2.fastq > index_1012_1_R2.sai
bwa samse ~/smarguer/SAM_GENOMES/ALLchromosomes.090511.chr.fsa index_1012_1_R2.sai index_1012_1_R2.fastq > index_1012_1_R2.sam
samtools view -b -S -o index_1012_1_R2.bam index_1012_1_R2.sam
samtools sort index_1012_1_R2.bam index_1012_1_R2.sorted
samtools index index_1012_1_R2.sorted.bam
######

