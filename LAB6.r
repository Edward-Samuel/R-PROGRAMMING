for(i in c(1:20)){
    if(i%%4==0){
        print(i)
    }
}

x=c(-2,6,0,-9,2)
for(i in seq_along(x)){
    if(x[i]<0){
        print(paste(x[i],"IS NEGATIVE"))
    }else if(x[i]>0){
        print(paste(x[i],"IS POSITIVE"))
    }else{
        print(paste(x[i],"IS NEITHER POSITIVE NOR NEGATIVE"))
    }
}

print("ENTER A VECTOR :")
V=scan(what = numeric(),sep = ',',strip.white = TRUE)
V
sort(V)

V1=scan(what = numeric(),sep = ',',strip.white = TRUE)
V1
V2=scan(what = numeric(),sep = ',',strip.white = TRUE)
V2
setdiff(V2,V1)

m=matrix(1:9,nrow = 3,ncol = 3)
m
m=as.list(m)
m

m=matrix(unlist(m),nrow = 3,ncol = 3)
m

y1=matrix(c(1:9),nrow = 3)
y1
y2=matrix(c(1:9),nrow = 3)
y2
y1*y2

y1*(c(1,2,3))

y1+y2

y1-y2

student=data.frame(
    name=c("abc","bac","abd"),
    department="AI & DS",
    year=c(2021,2022,2023)
)
student

col=data.frame(
    age=c(20,19,18)
)
col

q=cbind(student,col)
q

r=rbind(q,c("xyz","AI & DS",2022,19))
r
