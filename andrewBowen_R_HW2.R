# https://vincentarelbundock.github.io/Rdatasets/csv/AER/PSID1976.csv
library("ggplot")

df <- read.table("https://vincentarelbundock.github.io/Rdatasets/csv/AER/PSID1976.csv",
                 sep=",", header=TRUE)

# Getting summary of our df
print(summary.data.frame(df))

# Getting mean and median of hours worked and wages
print(mean(df$wage))
print(median(df$wage))
print(mean(df$hours))
print(median(df$hours))

# subset of original dataframe
newDF <- df[c(1, 2, 3, 4, 5), c("participation", "age", "wage", "hours", "college")]

 # newDF

# Re-naming columns
colnames(newDF)[1] <- "participate"
colnames(newDF)[2] <- "worker_age"
colnames(newDF)[3] <- "worker_wage"
colnames(newDF)[4] <- "hours_worked"
colnames(newDF)[5] <- "attended_college"

print(newDF)




