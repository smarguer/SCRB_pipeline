what=c("load","plot1")

if ("load" %in% what)
{
 files=dir(pattern="RPKM")
 for(i in 1:length(files))
 {
  load(files[i])
 }
}

###plot distribution of reads per gene### 
if ("plot1" %in% what)
{
 cycle=32
 par(mfrow=c(4,6))
 if(cycle==20)
 {
  for(i in 1:12)
  {
   todo=get(paste("R1212_1_R2_I",i,sep=''))
   hist(log2(todo[,"RC_exonic"]),breaks=50,xlim=c(0,20))
   legend(x="topright",legend=paste(length(which(todo[,"RC_exonic"]!=0)),";",length(which(todo[,"RC_AS"]!=0)),sep=''),bty="n",cex=2)
   legend(x="bottomright",legend=paste(median(todo[which(todo[,"RC_exonic"]!=0),"RC_exonic"],na.rm=T),"; ",max(todo[which(todo[,"RC_exonic"]!=0),"RC_exonic"],na.rm=T)),bty="n",cex=2)
  }
  for(i in 1:12)
  {
   todo=get(paste("R1212_3_R2_I",i,sep=''))
   hist(log2(todo[,"RC_exonic"]),breaks=50,xlim=c(0,20))
   legend(x="topright",legend=paste(length(which(todo[,"RC_exonic"]!=0)),";",length(which(todo[,"RC_AS"]!=0)),sep=''),bty="n",cex=2)
   legend(x="bottomright",legend=paste(median(todo[which(todo[,"RC_exonic"]!=0),"RC_exonic"],na.rm=T),"; ",max(todo[which(todo[,"RC_exonic"]!=0),"RC_exonic"],na.rm=T)),bty="n",cex=2)
  }
 }
 if(cycle==25)
 {
  for(i in 1:12)
  {
   todo=get(paste("R1212_2_R2_I",i,sep=''))
   hist(log2(todo[,"RC_exonic"]),breaks=50,xlim=c(0,20))
   legend(x="topright",legend=paste(length(which(todo[,"RC_exonic"]!=0)),";",length(which(todo[,"RC_AS"]!=0)),sep=''),bty="n",cex=2)
   legend(x="bottomright",legend=paste(median(todo[which(todo[,"RC_exonic"]!=0),"RC_exonic"],na.rm=T),"; ",max(todo[which(todo[,"RC_exonic"]!=0),"RC_exonic"],na.rm=T)),bty="n",cex=2)
  }
  for(i in 1:12)
  {
   todo=get(paste("R1212_4_R2_I",i,sep=''))
   hist(log2(todo[,"RC_exonic"]),breaks=50,xlim=c(0,20))
   legend(x="topright",legend=paste(length(which(todo[,"RC_exonic"]!=0)),";",length(which(todo[,"RC_AS"]!=0)),sep=''),bty="n",cex=2)
   legend(x="bottomright",legend=paste(median(todo[which(todo[,"RC_exonic"]!=0),"RC_exonic"],na.rm=T),"; ",max(todo[which(todo[,"RC_exonic"]!=0),"RC_exonic"],na.rm=T)),bty="n",cex=2)
  }
 }
 if(cycle==32)
 {
  for(i in 1:12)
  {
   todo=get(paste("R0512_1_R2_I",i,sep=''))
   hist(log2(todo[,"RC_exonic"]),breaks=50,xlim=c(0,20))
   legend(x="topright",legend=paste(length(which(todo[,"RC_exonic"]!=0)),";",length(which(todo[,"RC_AS"]!=0)),sep=''),bty="n",cex=2)
   legend(x="bottomright",legend=paste(median(todo[which(todo[,"RC_exonic"]!=0),"RC_exonic"],na.rm=T),"; ",max(todo[which(todo[,"RC_exonic"]!=0),"RC_exonic"],na.rm=T)),bty="n",cex=2)
  }
  for(i in 1:12)
  {
   todo=get(paste("R0512_2_R2_I",i,sep=''))
   hist(log2(todo[,"RC_exonic"]),breaks=50,xlim=c(0,20))
   legend(x="topright",legend=paste(length(which(todo[,"RC_exonic"]!=0)),";",length(which(todo[,"RC_AS"]!=0)),sep=''),bty="n",cex=2)
   legend(x="bottomright",legend=paste(median(todo[which(todo[,"RC_exonic"]!=0),"RC_exonic"],na.rm=T),"; ",max(todo[which(todo[,"RC_exonic"]!=0),"RC_exonic"],na.rm=T)),bty="n",cex=2)
  }
 }
}
###plot heatmap###
what="plot2"

if("plot2" %in% what)
{
 
 table1=matrix(NA,nrow(R1212_1_R2_I1),12)
 table2=matrix(NA,nrow(R1212_1_R2_I1),12)
 table3=matrix(NA,nrow(R1212_1_R2_I1),12)
 table4=matrix(NA,nrow(R1212_1_R2_I1),12)
 
 for(i in 1:12)
 {
  todo1=get(paste("R1212_1_R2_I",i,sep=''))
  todo2=get(paste("R1212_2_R2_I",i,sep=''))
  todo3=get(paste("R1212_3_R2_I",i,sep=''))
  todo4=get(paste("R1212_4_R2_I",i,sep=''))
  table1[,i]=todo1[,"RC_exonic"]
  table2[,i]=todo2[,"RC_exonic"]
  table3[,i]=todo3[,"RC_exonic"]
  table4[,i]=todo4[,"RC_exonic"]
 }  

 table=as.data.frame(cbind(table1,table2,table3,table4))
 row.names(table)=R1212_1_R2_I1[,1]
 table=cbind(table,BIG[,"common.BIG"],BIG[,"Annot"])
 test1=table[which(table[,1]>2),c(1:12,49,50)]
 test2=table[which(table[,13]>2),c(13:24,49,50)]
 test3=table[which(table[,27]>2),c(25:36,49,50)]
 test4=table[which(table[,39]>2),c(37:48,49,50)]
 
 test5=table[which(rowSums(table[,1:12],na.rm=T)>10),c(1:12,49,50)]
 test6=table[which(rowSums(table[,13:24],na.rm=T)>10),c(13:24,49,50)]
 test7=table[which(rowSums(table[,25:36],na.rm=T)>10),c(25:36,49,50)]
 test8=table[which(rowSums(table[,37:48],na.rm=T)>10),c(37:48,49,50)]
 
 for(i in 1:12)
 {
  test1[which(test1[,i]<=0),i]=NA
  test2[which(test2[,i]<=0),i]=NA
  test3[which(test3[,i]<=0),i]=NA
  test4[which(test4[,i]<=0),i]=NA
  test5[which(test5[,i]<=0),i]=NA
  test6[which(test6[,i]<=0),i]=NA
  test7[which(test7[,i]<=0),i]=NA
  test8[which(test8[,i]<=0),i]=NA
 }

 n6=vector()
 n8=vector()

 for(i in 1:nrow(test6))
 {
  n6[i]=length(which(is.na(test6[i,])==T))
 }
 for(i in 1:nrow(test8))
 {
  n8[i]=length(which(is.na(test8[i,])==T))
 }

}













































































