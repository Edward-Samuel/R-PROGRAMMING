A=array(c(1:9),dim=c(3,3,2))
A

x=array(1:27,dim=c(3,3,3))
x

dimnames(x)<- list( paste("Row",1:3),paste("Column",1:3),paste("Matrix",1:3))
x

x[2,,1]
x[,3,1]
x[2,,]

apply(x,c(2,3),max)

apply(x,2:3,min)

df=data.frame(
    Name=c("Emily","Benjamin","Sophia","Liam","Olivia","Lucas"),
    Age=c(25,30,22,18,26,27),
    Branch=c("Marketing","Finance","Medicine","Engineering","Journalism","IT"),
    Aadhar_No=280774352001:280774352006
)
df
df[1:2,]
df=rbind(df,c("Marsh",31,"Research",280774352007))
df

df=cbind(df,local_guardian=c("LG1","LG2","LG3","LG4","LG5","LG6","LG7"))
df

colnames(df)

df1=df[df$Age>18,]
df1

nrow(df)

fp=file.path("D:/R_LAB","SAMPLE.txt")
write.table(df,file=fp,sep=",",row.names=FALSE)
if (file.exists(fp)){
    cat("DATAFRAME SAVED TO ",fp,"\n")
} else{
    cat("ERROR: FILE CAN'T BE SAVED.\n")
}

fp1=file.path("D:/ML LAB/2","dataset.csv")
rp=read.csv(fp1)
rp
