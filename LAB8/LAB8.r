install.packages(c("readr","openxlsx","jsonlite"))
library(readr)
library(openxlsx)
library(jsonlite)

data1=data.frame(
  name=c("Arjun","Kavya","Priya","Karthik","Nithya"),
  address=c("123 Main St","456 Elm St","789 Oak St","101 Pine St","202 Maple St"),
  age=c(35,28,65,45,22),
  gender=c("Male","Female","Female","Male","Female"),
  working=c("Working","Working","Non-Working","Working","Working"),
  literacy_status=c("Literate","Illiterate","Literate","Literate","Literate"),
  vaccination_status=c("Partially Vaccinated","Fully Vaccinated","Fully Vaccinated","Partially Vaccinated","Not Vaccinated"),
  occupation=c("Engineer","Doctor","Retired","Teacher","Student")
)

write_csv(data1,"LAB8/data1.csv")

data1=read_csv("LAB8/data1.csv")

mp=sum(data1$gender=="Male")
print(paste("MALE POPULATION IS ",mp))

fp=sum(data1$gender=="Female")
print(paste("FEMALE POPULATION IS ",fp))

vote=sum(data1$age >= 18)
print(paste("VOTING ELIGIBILITY :",vote))

per_working=(sum(data1$working=="Working")/nrow(data1))*100
print(paste("% OF WORKING INDIVIDUALS :",per_working,"%"))

lr_f=sum(data1$literacy_status=="Literate"&data1$gender=="Female")/sum(data1$gender=="Female")*100
print(paste("THE LITERACY RATE AMONG FEMALES IS",round(lr_f,2)))

lr_m=sum(data1$literacy_status=="Literate"&data1$gender=="Male")/sum(data1$gender=="Male")*100
print(paste("THE LITERACY RATE AMONG MALES IS",lr_m))

# ----------------------------------------------------------------------------------------------------

data2=data.frame(
  patient_name=c("Aravindan","Kavitha Rani","Priya Lakshmi","Manikandan","Nandhini Devi"),
  age=c(35,28,65,45,22),
  gender=c("Male","Female","Female","Male","Female"),
  diagnosis=c("Flu","Broken Arm","High Blood Pressure","Sprained Ankle","Headache"),
  treatment_received=c("Rest","Bandage","Medication","Bandage","Painkillers"),
  medication_prescribed=c("Painkillers","Painkillers","Blood Pressure Medication","None","Aspirin"),
  follow_up_appointments=c(2,3,1,2,0)
)

write.xlsx(data2,"LAB8/data2.xlsx",rowNames=FALSE)

data2=read.xlsx("LAB8/data2.xlsx")

per_male=sum(data2$gender=="Male")/nrow(data2)*100
print(paste("% OF MALE PATIENTS IS",per_male,"%"))

per_female=sum(data2$gender=="Female")/nrow(data2)*100
print(paste("% OF FEMALE PATIENTS IS",per_female,"%"))

common_diag=names(sort(table(data2$diagnosis),decreasing=TRUE))[1]
print(paste("MOST COMMON DIAGNOSIS IS",common_diag))

treat_freq=table(data2$treatment_received)
print("FREQUENCY OF TREATMENTS :")
treat_freq

common_med=names(sort(table(data2$medication_prescribed),decreasing=TRUE))[1]
print(paste("MOST COMMONLY PRESCRIBED MEDICATIONS :",common_med))

avg_follow_up=mean(data2$follow_up_appointments)
print(paste("AVERAGE NUMBER OF FOLLOW-UP APPOINTMENTS PER PATIENT :",avg_follow_up))

# ----------------------------------------------------------------------------------------------

data3=data.frame(
  car_make=c("Toyota","Honda","Ford","Toyota","Honda"),
  car_model=c("Camry","Civic","Focus","Corolla","Accord"),
  year=c(2018,2016,2019,2016,2020),
  mileage=c(30000,25000,35000,40000,20000),
  price=c(15000,14000,16000,13000,17000),
  condition=c("Good","Excellent","Fair","Good","Excellent"),
  location=c("City A","City B","City A","City C","City B")
)
data3=toJSON(data3)

write(data3,file="LAB8/data3.json")

data3=fromJSON("LAB8/data3.json")

makes=table(data3$car_make)
makes
models=table(data3$car_model)
models

avg_mileage=mean(data3$mileage)
print(paste("AVERAGE MILEAGE OF CARS IS ",avg_mileage,"Km/hr"))

most_expense=data3[which.max(data3$price),]
most_expense

least_expense=data3[which.min(data3$price),]
least_expense

common_yrs=names(sort(table(data3$year),decreasing = TRUE))[1]
print(paste("MOST COMMON YEARS OF CARS AVAILABLE FOR RESALE IS",common_yrs))

avg_price_yr=tapply(data3$price,data3$year,mean)
avg_price_yr
