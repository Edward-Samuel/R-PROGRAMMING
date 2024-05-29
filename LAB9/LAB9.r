data=read.csv("LAB9/data9.csv")
data

total=table(data$variety)
total
barplot(total,
        main="Species Distribution in data Dataset",
        xlab="Species",
        ylab="Count",
        col="#d00984")

hist(data$sepal.length,
     breaks=seq(min(data$sepal.length),max(data$sepal.length) + 0.5,by=0.5),
     main="Sepal Length Distribution in data Dataset",
     xlab="Sepal Length",
     ylab="Frequency",
     col="lightgreen")