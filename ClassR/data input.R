
#Importing files into R ----
#Reading CSV files
# To read CSV files in R, use the command || read.csv("Your file path", header = T/F,...) ||
path <- c("C:\\Users\\carlvinm\\Desktop\\data.csv")
myDataFrame <- read.csv(file = path,
                header = TRUE, #Specifies whether the first row is column header or not
                stringsAsFactors = FALSE)


print(myDataFrame) #ouput
myDataFrame #output

#Writting data from R for export----
# To write a csv file, use || write.csv(file to be exported, "path to export to") ||
write.csv(myDataFrame, file = "C:\\Users\\carlvinm\\Desktop\\data2.csv" ) #Exports/writes csv files


#Reading XLSX files----
# To read xls files, use package xlsx and use command || read.xlsx("path to file)||

#Install an R package----
install.packages("xlsx")

#load a package for use----
library(xlsx)

require("xlsx")

myDataFrameTwo <- read.xlsx("J:\\Personalprojects\\Teaching\\Classer\\Data\\letterxl.xlsx", sheetIndex =  1)


#Write an xlsx file

write.xlsx(myDataFrameTwo,"part2.xlsx",sheetName = "letter and number")





#######################-------------------------------
# #Checks ----
# #checks the class or type of objects
# class(myDataFrame)
# class(myDataFrame$Letters)
# class(myDataFrame$Numbers)
#
# #Pick a data column
# numbers <- df1$Numbers #pick by colname
# col2 <- df1[2] #pick by colposition
# col1 <- df1[,2]
#
# col1_2 <- df1[1:2] #pick by range
#
# #Pick data rows
# row1 <- df1[1,] #Pick one row
# row1
# row1_5 <- df1[1:5,1:2] #Pick range of rows vs range of columns
# row1_5 <- df1[1:5,] #n rows vs all colums
# row1_5
#
# #Pick specific values
# letter_m <- df1[1,1]
#
# #Pick value from vector
# vector_letters <- df1$Letters
# class(vector_letters)
#
# letter_p <- vector_letters[4] #single position
# letter_p_U <- vector_letters[4:9] #range
# random <- vector_letters[c(1,5,7)]#random positions
