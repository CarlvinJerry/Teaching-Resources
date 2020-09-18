#Data frames----
#Characteristics
#Has defined number of rows and columns
#Each column has a name and should be non-empty
#Row names should be unique
#

#Create a dataframe--
Names <- c("Carlvin","Zipy","Uhunye", "Obako")
Ages <- c(45,34,23,15)
Heights <- c(4.5,4.9,7.3,1.2)

humansDf <-  data.frame(Names,Ages,Heights, stringsAsFactors = FALSE)


#WORKING WITH DATAFRAMES----
#Accessing/picking values from a DF
#Picking a column
humansDf$Names #Access by column name
humansDf[,1] #Accss by col position

#TO DO-------------------------
#Pick the last two columns
#Pick the last row
#Pick obako's height
#PIck Uhunye's Age
#------------------------------


nrow(humansDf) #Number of rows in a dataframe
ncol(humansDf) #Number of cols in a dataframe
dim(humansDf) #Checks (row x col) of a dataframe

df2<- data.frame(humansDf$Ages[1:3],humansDf[,3][1:3], stringsAsFactors = F)

#Renaming columns in a dataframe-----
colnames(df2) #Checks all column names in a df

#Use Base R
colnames(df2)[1:2] <- c("Ages","Heights")
df2

#Use a package
library(dplyr)

df2 %>% rename( "YrsOld" = Ages,"HowTall"=Heights) %>% colnames()

#Adding rows and columns onto a df-----
#Column
df2$Weight <- c("73Kg","45Kg","49Kg") #Add a column by column vector


Occupation <- c("Doctor", "Pilot", "President")
df2 <- cbind(df2,Occupation )#Add a column by binding cbind()

four<- c(50,5.5,"78Kg","Thief")
rbind(df2,four)#Add a row by binding rbind()


#TO DO------------------
# Add two more columns of your choice to df2
# Add five more rows to df2
#--------------------------------------