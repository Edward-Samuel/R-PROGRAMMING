n=2345
log2(sqrt(n))

l=c(-1,0,1)
for (i in l){
    if(i==0){
       print(paste(i," IS NEITHER POSITIVE NOR NEAGTIVE"))
    }else if(i<0){
       print(paste(i," IS NEAGTIVE"))
    }else {
       print(paste(i," IS NEAGTIVE"))
    }
}

rf=c(0.1,0.6,33.8,1.9,9.6,4.3,33.7,0.3,0.0,0.1,3.1)
mean(rf)
sd(rf)

n=readline("ENTER A NUMBER :")
n=as.integer(n)
factorial(n)
fact=function(n){
    if(n==0 || n==1){
        return(1)
    }else {
        return (n*fact(n-1))       
    }
}
fact(n)

f=c('A','B','A','C','A')
print(factor(f))

x=c(1,2,3,3,5,3,2,4,NA)
print(factor(x))

x=c(11,22,47,47,11,47,11)
print(factor(x,levels=c(11,22,47),ordered=TRUE)[4])

y=factor(c("p","q","p","r","q"))
levels(y)=c("w","q","r")
y

data=data.frame(
  name=c("Ram","Ravi","Charlie","David"),
  age=c(25,30,35,40),
  gender=c("Male","Male","Female","Male"),
  stringsAsFactors=FALSE
)
print(data)
is.factor(data$gender)

x=factor(c("a","b","c","b","a"))
print(levels(x))
x=factor(x,levels=c("a","b","c"),labels=c("fertiliser1","fertiliser2","fertiliser3"))
print(levels(x))
