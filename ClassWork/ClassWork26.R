install.packages("rmarkdown")
library(rmarkdown)

# date and time function : 

# Tue Mar 26 10:41:20 2024
date()

# 2024-03-26
Sys.Date()

# 2024-03-26 10:42:54 IST
Sys.time()

# Asia/Calcutta
Sys.timezone()

date1<-as.POSIXlt("26-03-2024")  #  LMT
print(date1)


date1<-as.POSIXlt("2024-03-26")  #  IST
print(date1)


weekdays(date1)  #  Tuesday

months(date1)  #  March


weekdays(date1,abbreviate = TRUE)  # Tue



























