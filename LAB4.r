l=list(1,2,3,c(1,2,3),c(TRUE,FALSE,TRUE),c('a','b','c'))
l

l[1]
l[c(TRUE)]
a=l[5]
a
l[1:2]

i=list(7,1,7,6,2,2,0,8,0,1,3)
c=list('e','d','w','a','r','d')
c(i,c)

a=list(1,2,3,4,5)
b=list(6,7,8,9,10)
add=list()
sub=list()
mul=list()
div=list()
if(length(a)==length(b)){
    for (i in seq_along(a)){
        add[[i]]=a[[i]]+b[[i]]
        sub[[i]]=a[[i]]-b[[i]]
        mul[[i]]=a[[i]]*b[[i]]
        div[[i]]=a[[i]]/b[[i]]        
    }
} 
add
sub
mul
div
rbind(a,b)
cbind(a,b)

s=list(1,"abc",TRUE,c(1,9))
s=c(7,s)
s
s[3]=6
s

m=matrix(1:18,nrow=6,ncol=3)
m
m[4,3]
m[3,]
m[,4]
m[,3]
m[4:6,2:3]
m[-5,]