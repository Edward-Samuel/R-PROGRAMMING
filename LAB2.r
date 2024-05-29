# Variable Assignment and Printing 
FullName="EDWARD SAMUEL.L" 
number=13 
city='C' 
date=Sys.Date() 
paste("My name is ",FullName) 
paste("My number is ",number) 
paste("My city is ",city) 
paste("Today's Date is ",date) 

# Arithmetic Operators: 
num1=45 
num2=18 
print(num1+num2) 
print(num1-num2) 
print(num1*num2) 
print(num1/num2) 
 
# Modulus Operator: 
dividend=45 
print(dividend%%7) 
check=66 
print(check%%3)
if (check%%3==0) 
{ 
    paste(check,"IS DIVISIBLE BY 3") 
}else { 
    paste(check,"IS NOT DIVISIBLE BY 3") 
}

age1=45
age2=66
if (age1>age2) {
    paste(age1,"is greater than",age2)
} else if(age2>age1) {
    paste(age2,"is greater than",age1)
}else if (age1!=age2) {
    paste(age1,"is not equal to",age2)
}else {
    paste(age1,"is equal to",age2)
}

# Logical Operators:
grade='A+'
if (grade=='A' || grade=='A+') {
    print("EXCELLENT")
}else if (grade=='B') {
    print("GOOD")
}else if (grade=='C') {
    print("AVERAGE")
}else {
    print("FAIL")
}

# Use of paste() and paste0()
firstName="EDWARD"
lastName="SAMUEL"
paste(firstName,lastName)
paste0(firstName,lastName)

# Investigating the data types
print(class(3.14))
print(class(42))
print(class("Hello, World!"))
print(class(TRUE))

print(class(data.frame()))
print(class(list()))
