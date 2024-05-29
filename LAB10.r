data=data.frame(
  age=c(25,30,35,40,45,50,55,60,65,70),
  bp_systolic=c(120,125,130,135,140,145,150,155,160,165),
  bp_diastolic=c(80,82,85,87,90,92,95,97,100,102),
  cholesterol=c(180,200,210,220,230,240,250,260,270,280),
  condition=c("Hypertension","Diabetes","Heart Disease","Asthma","Obesity","Hypertension","Diabetes","Heart Disease","Asthma","Obesity"),
  gender=c("Male","Female","Male","Female","Male","Female","Male","Female","Male","Female")
)

# SCATTER PLOT:
matplot(data$age,cbind(data$bp_systolic,data$bp_diastolic),type="p",col=c("blue","red"),pch=19,xlab="Age",ylab="Blood Pressure",main="Relationship between Age and Blood Pressure")
legend("topright",legend=c("Systolic","Diastolic"),col=c("blue","red"),pch=19)

# BOX PLOT:
boxplot(data$cholesterol,ylab="Cholesterol Level",main="Cholesterol Level Distribution",col="green")

# PIE CHART 1:
condition_counts=table(data$condition)
pie(condition_counts,main="Distribution of Medical Conditions",col=rainbow(length(condition_counts)))

# PIE CHART 2:
gender_counts=table(data$gender)
pie(gender_counts,main="Gender Distribution of data",col=c("orange","green"))