#mv 1_S1_L001_R1_001.fastq 0512_1_R1.fastq
#mv 1_S1_L001_R2_001.fastq 0512_1_R2.fastq
#mv 2_S2_L001_R1_001.fastq 0512_2_R1.fastq
#mv 2_S2_L001_R2_001.fastq 0512_2_R2.fastq
######
perl ../parseINDEX_SCRB.pl 0512_1_R1.fastq 0512_1_R2.fastq > index_0512_1

bwa aln ~/smarguer/SAM_GENOMES/ALLchromosomes.090511.chr.fsa index_0512_1_R1.fastq > index_0512_1_R1.sai
bwa samse ~/smarguer/SAM_GENOMES/ALLchromosomes.090511.chr.fsa index_0512_1_R1.sai index_0512_1_R1.fastq > index_0512_1_R1.sam
samtools view -b -S -o index_0512_1_R1.bam index_0512_1_R1.sam
samtools sort index_0512_1_R1.bam index_0512_1_R1.sorted
samtools index index_0512_1_R1.sorted.bam

bwa aln ~/smarguer/SAM_GENOMES/ALLchromosomes.090511.chr.fsa index_0512_1_R2.fastq > index_0512_1_R2.sai
bwa samse ~/smarguer/SAM_GENOMES/ALLchromosomes.090511.chr.fsa index_0512_1_R2.sai index_0512_1_R2.fastq > index_0512_1_R2.sam
samtools view -b -S -o index_0512_1_R2.bam index_0512_1_R2.sam
samtools sort index_0512_1_R2.bam index_0512_1_R2.sorted
samtools index index_0512_1_R2.sorted.bam
######

######
perl ../parseINDEX_SCRB.pl 0512_2_R1.fastq 0512_2_R2.fastq > index_0512_2

bwa aln ~/smarguer/SAM_GENOMES/ALLchromosomes.090511.chr.fsa index_0512_2_R1.fastq > index_0512_2_R1.sai
bwa samse ~/smarguer/SAM_GENOMES/ALLchromosomes.090511.chr.fsa index_0512_2_R1.sai index_0512_2_R1.fastq > index_0512_2_R1.sam
samtools view -b -S -o index_0512_2_R1.bam index_0512_2_R1.sam
samtools sort index_0512_2_R1.bam index_0512_2_R1.sorted
samtools index index_0512_2_R1.sorted.bam

bwa aln ~/smarguer/SAM_GENOMES/ALLchromosomes.090511.chr.fsa index_0512_2_R2.fastq > index_0512_2_R2.sai
bwa samse ~/smarguer/SAM_GENOMES/ALLchromosomes.090511.chr.fsa index_0512_2_R2.sai index_0512_2_R2.fastq > index_0512_2_R2.sam
samtools view -b -S -o index_0512_2_R2.bam index_0512_2_R2.sam
samtools sort index_0512_2_R2.bam index_0512_2_R2.sorted
samtools index index_0512_2_R2.sorted.bam
######



