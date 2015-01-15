
perl ../../../UMIfilter.pl 1212_3_R2_I3.5mis.ALLchr.col > test_20_1_100
perl ../../../UMIfilter.pl 1212_3_R2_I4.5mis.ALLchr.col > test_20_2_100
perl ../../../UMIfilter.pl 1212_3_R2_I5.5mis.ALLchr.col > test_20_1_10
perl ../../../UMIfilter.pl 1212_3_R2_I6.5mis.ALLchr.col > test_20_2_10
perl ../../../UMIfilter.pl 1212_3_R2_I7.5mis.ALLchr.col > test_20_1_1
perl ../../../UMIfilter.pl 1212_3_R2_I8.5mis.ALLchr.col > test_20_2_1
perl ../../../UMIfilter.pl 1212_3_R2_I9.5mis.ALLchr.col > test_20_3_1
perl ../../../UMIfilter.pl 1212_3_R2_I10.5mis.ALLchr.col > test_20_4_1
perl ../../../UMIfilter.pl 1212_3_R2_I11.5mis.ALLchr.col > test_20_5_1
perl ../../../UMIfilter.pl 1212_3_R2_I12.5mis.ALLchr.col > test_20_6_1

perl ../../../UMIfilter.pl 1212_4_R2_I3.5mis.ALLchr.col > test_25_1_100
perl ../../../UMIfilter.pl 1212_4_R2_I4.5mis.ALLchr.col > test_25_2_100
perl ../../../UMIfilter.pl 1212_4_R2_I5.5mis.ALLchr.col > test_25_1_10
perl ../../../UMIfilter.pl 1212_4_R2_I6.5mis.ALLchr.col > test_25_2_10
perl ../../../UMIfilter.pl 1212_4_R2_I7.5mis.ALLchr.col > test_25_1_1
perl ../../../UMIfilter.pl 1212_4_R2_I8.5mis.ALLchr.col > test_25_2_1
perl ../../../UMIfilter.pl 1212_4_R2_I9.5mis.ALLchr.col > test_25_3_1
perl ../../../UMIfilter.pl 1212_4_R2_I10.5mis.ALLchr.col > test_25_4_1
perl ../../../UMIfilter.pl 1212_4_R2_I11.5mis.ALLchr.col > test_25_5_1
perl ../../../UMIfilter.pl 1212_4_R2_I12.5mis.ALLchr.col > test_25_6_1

perl ../../../UMIfilter.pl 0512_2_R2_I3.5mis.ALLchr.col > test_34_1_100
perl ../../../UMIfilter.pl 0512_2_R2_I4.5mis.ALLchr.col > test_34_2_100
perl ../../../UMIfilter.pl 0512_2_R2_I5.5mis.ALLchr.col > test_34_1_10
perl ../../../UMIfilter.pl 0512_2_R2_I6.5mis.ALLchr.col > test_34_2_10
perl ../../../UMIfilter.pl 0512_2_R2_I7.5mis.ALLchr.col > test_34_1_1
perl ../../../UMIfilter.pl 0512_2_R2_I8.5mis.ALLchr.col > test_34_2_1
perl ../../../UMIfilter.pl 0512_2_R2_I9.5mis.ALLchr.col > test_34_3_1
perl ../../../UMIfilter.pl 0512_2_R2_I10.5mis.ALLchr.col > test_34_4_1
perl ../../../UMIfilter.pl 0512_2_R2_I11.5mis.ALLchr.col > test_34_5_1
perl ../../../UMIfilter.pl 0512_2_R2_I12.5mis.ALLchr.col > test_34_6_1

test_20_1_100=read.delim("test_20_1_100",header=F)
test_20_2_100=read.delim("test_20_2_100",header=F)
test_20_1_10=read.delim("test_20_1_10",header=F)
test_20_2_10=read.delim("test_20_2_10",header=F)
test_20_1_1=read.delim("test_20_1_1",header=F)
test_20_2_1=read.delim("test_20_2_1",header=F)
test_20_3_1=read.delim("test_20_3_1",header=F)
test_20_4_1=read.delim("test_20_4_1",header=F)
test_20_5_1=read.delim("test_20_5_1",header=F)
test_20_6_1=read.delim("test_20_6_1",header=F)


test_25_1_100=read.delim("test_25_1_100",header=F)
test_25_2_100=read.delim("test_25_2_100",header=F)
test_25_1_10=read.delim("test_25_1_10",header=F)
test_25_2_10=read.delim("test_25_2_10",header=F)
test_25_1_1=read.delim("test_25_1_1",header=F)
test_25_2_1=read.delim("test_25_2_1",header=F)
test_25_3_1=read.delim("test_25_3_1",header=F)
test_25_4_1=read.delim("test_25_4_1",header=F)
test_25_5_1=read.delim("test_25_5_1",header=F)
test_25_6_1=read.delim("test_25_6_1",header=F)

test_34_1_100=read.delim("test_34_1_100",header=F)
test_34_2_100=read.delim("test_34_2_100",header=F)
test_34_1_10=read.delim("test_34_1_10",header=F)
test_34_2_10=read.delim("test_34_2_10",header=F)
test_34_1_1=read.delim("test_34_1_1",header=F)
test_34_2_1=read.delim("test_34_2_1",header=F)
test_34_3_1=read.delim("test_34_3_1",header=F)
test_34_4_1=read.delim("test_34_4_1",header=F)
test_34_5_1=read.delim("test_34_5_1",header=F)
test_34_6_1=read.delim("test_34_6_1",header=F)


par(mfrow=c(1,3))
plot(test_20_1_100[,2],xlim=c(0,2000000),type="l",ylim=c(0,20000),xlab="reads number",ylab="unique reads number",main="100pg")
lines(test_20_2_100[,2],type="l",lty=2)
lines(test_25_1_100[,2],type="l",lty=1,col="blue")
lines(test_25_2_100[,2],type="l",lty=2,col="blue")
lines(test_34_1_100[,2],type="l",lty=1,col="red")
lines(test_34_2_100[,2],type="l",lty=2,col="red")
legend(x="topleft",legend=c("20 cycles","25 cycles","34 cycles"),text.col=c("black","blue","red"),bty="n",cex=2)

plot(test_20_1_10[,2],xlim=c(0,600000),type="l",ylim=c(0,5000),xlab="reads number",ylab="unique reads number",main="10pg")
lines(test_20_2_10[,2],type="l",lty=2)
lines(test_25_1_10[,2],type="l",lty=1,col="blue")
lines(test_25_2_10[,2],type="l",lty=2,col="blue")
lines(test_34_1_10[,2],type="l",lty=1,col="red")
lines(test_34_2_10[,2],type="l",lty=2,col="red")
legend(x="topleft",legend=c("20 cycles","25 cycles","34 cycles"),text.col=c("black","blue","red"),bty="n",cex=2)

plot(test_20_1_1[,2],xlim=c(0,100000),type="l",ylim=c(0,1500),xlab="reads number",ylab="unique reads number",main="1pg")
lines(test_20_2_1[,2],type="l",lty=1)
lines(test_20_3_1[,2],type="l",lty=1)
lines(test_20_4_1[,2],type="l",lty=1)
lines(test_20_5_1[,2],type="l",lty=1)
lines(test_20_6_1[,2],type="l",lty=1)
lines(test_25_1_1[,2],type="l",lty=1,col="blue")
lines(test_25_2_1[,2],type="l",lty=1,col="blue")
lines(test_25_3_1[,2],type="l",lty=1,col="blue")
lines(test_25_4_1[,2],type="l",lty=1,col="blue")
lines(test_25_5_1[,2],type="l",lty=1,col="blue")
lines(test_25_6_1[,2],type="l",lty=1,col="blue")
lines(test_34_1_1[,2],type="l",lty=1,col="red")
lines(test_34_2_1[,2],type="l",lty=1,col="red")
lines(test_34_3_1[,2],type="l",lty=1,col="red")
lines(test_34_4_1[,2],type="l",lty=1,col="red")
lines(test_34_5_1[,2],type="l",lty=1,col="red")
lines(test_34_6_1[,2],type="l",lty=1,col="red")
legend(x="topleft",legend=c("20 cycles","25 cycles","34 cycles"),text.col=c("black","blue","red"),bty="n",cex=2)
###########
plot(sliding_ratio(dat=test_20_1_100)[,1],sliding_ratio(dat=test_20_1_100)[,2],type="l",ylim=c(0,100),xlim=c(0,2000000),xlab="reads number",ylab="number of new UMI in 100 reads window")
lines(sliding_ratio(dat=test_20_2_100)[,1],sliding_ratio(dat=test_20_2_100)[,2],type="l",ylim=c(0,100),col="black")
lines(sliding_ratio(dat=test_25_1_100)[,1],sliding_ratio(dat=test_25_1_100)[,2],type="l",ylim=c(0,100),col="blue")
lines(sliding_ratio(dat=test_25_2_100)[,1],sliding_ratio(dat=test_25_2_100)[,2],type="l",ylim=c(0,100),col="blue")
lines(sliding_ratio(dat=test_34_1_100)[,1],sliding_ratio(dat=test_34_1_100)[,2],type="l",ylim=c(0,100),col="red")
lines(sliding_ratio(dat=test_34_2_100)[,1],sliding_ratio(dat=test_34_2_100)[,2],type="l",ylim=c(0,100),col="red")
legend(x="topleft",legend=c("20 cycles","25 cycles","34 cycles"),text.col=c("black","blue","red"),bty="n",cex=2)
abline(h=c(5,10,20),lty=2)

plot(sliding_ratio(dat=test_20_1_10)[,1],sliding_ratio(dat=test_20_1_10)[,2],type="l",ylim=c(0,100),xlim=c(0,150000),xlab="reads number",ylab="number of new UMI in 100 reads window")
lines(sliding_ratio(dat=test_20_2_10)[,1],sliding_ratio(dat=test_20_2_10)[,2],type="l",ylim=c(0,100),col="black")
lines(sliding_ratio(dat=test_25_1_10)[,1],sliding_ratio(dat=test_25_1_10)[,2],type="l",ylim=c(0,100),col="blue")
lines(sliding_ratio(dat=test_25_2_10)[,1],sliding_ratio(dat=test_25_2_10)[,2],type="l",ylim=c(0,100),col="blue")
lines(sliding_ratio(dat=test_34_1_10)[,1],sliding_ratio(dat=test_34_1_10)[,2],type="l",ylim=c(0,100),col="red")
lines(sliding_ratio(dat=test_34_2_10)[,1],sliding_ratio(dat=test_34_2_10)[,2],type="l",ylim=c(0,100),col="red")
legend(x="topleft",legend=c("20 cycles","25 cycles","34 cycles"),text.col=c("black","blue","red"),bty="n",cex=2)
abline(h=c(5,10,20),lty=2)

plot(sliding_ratio(dat=test_20_1_1)[,1],sliding_ratio(dat=test_20_1_1)[,2],type="l",ylim=c(0,100),xlim=c(0,150000),xlab="reads number",ylab="number of new UMI in 100 reads window")
lines(sliding_ratio(dat=test_20_2_1)[,1],sliding_ratio(dat=test_20_2_1)[,2],type="l",ylim=c(0,100),col="black")
lines(sliding_ratio(dat=test_20_3_1)[,1],sliding_ratio(dat=test_20_3_1)[,2],type="l",ylim=c(0,100),col="black")
lines(sliding_ratio(dat=test_20_4_1)[,1],sliding_ratio(dat=test_20_4_1)[,2],type="l",ylim=c(0,100),col="black")
lines(sliding_ratio(dat=test_20_5_1)[,1],sliding_ratio(dat=test_20_5_1)[,2],type="l",ylim=c(0,100),col="black")
lines(sliding_ratio(dat=test_20_6_1)[,1],sliding_ratio(dat=test_20_6_1)[,2],type="l",ylim=c(0,100),col="black")
lines(sliding_ratio(dat=test_25_1_1)[,1],sliding_ratio(dat=test_25_1_1)[,2],type="l",ylim=c(0,100),col="blue")
lines(sliding_ratio(dat=test_25_2_1)[,1],sliding_ratio(dat=test_25_2_1)[,2],type="l",ylim=c(0,100),col="blue")
lines(sliding_ratio(dat=test_25_3_1)[,1],sliding_ratio(dat=test_25_3_1)[,2],type="l",ylim=c(0,100),col="blue")
lines(sliding_ratio(dat=test_25_4_1)[,1],sliding_ratio(dat=test_25_4_1)[,2],type="l",ylim=c(0,100),col="blue")
lines(sliding_ratio(dat=test_25_5_1)[,1],sliding_ratio(dat=test_25_5_1)[,2],type="l",ylim=c(0,100),col="blue")
lines(sliding_ratio(dat=test_25_6_1)[,1],sliding_ratio(dat=test_25_6_1)[,2],type="l",ylim=c(0,100),col="blue")
lines(sliding_ratio(dat=test_34_1_1)[,1],sliding_ratio(dat=test_34_1_1)[,2],type="l",ylim=c(0,100),col="red")
lines(sliding_ratio(dat=test_34_2_1)[,1],sliding_ratio(dat=test_34_2_1)[,2],type="l",ylim=c(0,100),col="red")
lines(sliding_ratio(dat=test_34_3_1)[,1],sliding_ratio(dat=test_34_3_1)[,2],type="l",ylim=c(0,100),col="red")
lines(sliding_ratio(dat=test_34_4_1)[,1],sliding_ratio(dat=test_34_4_1)[,2],type="l",ylim=c(0,100),col="red")
lines(sliding_ratio(dat=test_34_5_1)[,1],sliding_ratio(dat=test_34_5_1)[,2],type="l",ylim=c(0,100),col="red")
lines(sliding_ratio(dat=test_34_6_1)[,1],sliding_ratio(dat=test_34_6_1)[,2],type="l",ylim=c(0,100),col="red")
legend(x="topleft",legend=c("20 cycles","25 cycles","34 cycles"),text.col=c("black","blue","red"),bty="n",cex=2)
abline(h=c(5,10,20),lty=2)

##########
barplot(
ratio_20_1_100 = test_20_1_100[,2]/test_20_1_100[,1]
ratio_20_2_100 = test_20_2_100[,2]/test_20_2_100[,1]
ratio_25_1_100 = test_25_1_100[,2]/test_25_1_100[,1]
ratio_25_2_100 = test_25_2_100[,2]/test_25_2_100[,1]
ratio_34_1_100 = test_34_1_100[,2]/test_34_1_100[,1]
ratio_34_2_100 = test_34_2_100[,2]/test_34_2_100[,1]
ratio_20_1_10 = test_20_1_10[,2]/test_20_1_10[,1]
ratio_20_2_10 = test_20_2_10[,2]/test_20_2_10[,1]
ratio_25_1_10 = test_25_1_10[,2]/test_25_1_10[,1]
ratio_25_2_10 = test_25_2_10[,2]/test_25_2_10[,1]
ratio_34_1_10 = test_34_1_10[,2]/test_34_1_10[,1]
ratio_34_2_10 = test_34_2_10[,2]/test_34_2_10[,1]
ratio_20_1_1 = test_20_1_1[,2]/test_20_1_1[,1]
ratio_20_2_1 = test_20_2_1[,2]/test_20_2_1[,1]
ratio_20_3_1 = test_20_3_1[,2]/test_20_3_1[,1]
ratio_20_4_1 = test_20_4_1[,2]/test_20_4_1[,1]
ratio_20_5_1 = test_20_5_1[,2]/test_20_5_1[,1]
ratio_20_6_1 = test_20_6_1[,2]/test_20_6_1[,1]
ratio_25_1_1 = test_25_1_1[,2]/test_25_1_1[,1]
ratio_25_2_1 = test_25_2_1[,2]/test_25_2_1[,1]
ratio_25_3_1 = test_25_3_1[,2]/test_25_3_1[,1]
ratio_25_4_1 = test_25_4_1[,2]/test_25_4_1[,1]
ratio_25_5_1 = test_25_5_1[,2]/test_25_5_1[,1]
ratio_25_6_1 = test_25_6_1[,2]/test_25_6_1[,1]
ratio_34_1_1 = test_34_1_1[,2]/test_34_1_1[,1]
ratio_34_2_1 = test_34_2_1[,2]/test_34_2_1[,1]
ratio_34_3_1 = test_34_3_1[,2]/test_34_3_1[,1]
ratio_34_4_1 = test_34_4_1[,2]/test_34_4_1[,1]
ratio_34_5_1 = test_34_5_1[,2]/test_34_5_1[,1]
ratio_34_6_1 = test_34_6_1[,2]/test_34_6_1[,1]

sliding_ratio=function(dat,win=100)
{
 j=0
 out=data.frame()
 inter=seq(1,(nrow(dat)-win),win)
 for (i in 1:length(inter))
 {
  j=j+1
  out[j,1]=inter[i]
  out[j,2]=dat[i+(win-1),2]-dat[i,2]
 }
 return(out)
}






