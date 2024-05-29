a=readline("ENTER A NUMBER :")
a=as.integer(a)
a

b=readline(prompt = "ENTER A COMPLEX NUMBER :")
b=as.complex(b)
b=as.integer(b)
b

c=readline(prompt = "ENTER A CHARACTER :")
c=as.integer(c)
c
c+12

d=readline(prompt = "ENTER A LOGICAL VALUE :")
d=as.logical(d)
d=as.integer(d)
d

e=1:50
e

f=seq(from=2.2,to=4.2,by=0.1)
f

g=c(1,2,3,4,5)
g
typeof(g)

h=c(1,"adv",TRUE,2.3)
h
typeof(h)
length(h)

i=seq(from=100,to=150,by=5)
i

j=seq(from=1,to=100,length.out=13)
j

k=c(1,2,3,4,5)
l=c(1+2i,2+3i,3+4i)
m=c(k,l)
m
length(m)
typeof(m)

n=c('a','b','c','d')
o=c(l,n)
o
length(o)
typeof(o)

p=letters
p
q=1:26
q
p[q]
p[3]
p[c(4,22,13)]
p[25]
p[!(q %in% c(2,24))]
p[1:5]
p[24:26]
p[10:20]