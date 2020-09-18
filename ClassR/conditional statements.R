#Conditional statements
#IF statement--------

# if(expression){
#   statement/execution
# }

#Example with one condition
number <- 25

if(number > 10){
  print("The number is greater than 10")
}


#IF-ELSE statement------
#More than one condition


# if(expression){
#   statement/execution1
# }
# else
# {
#   statement/execution2
# }
number <- -25

if (number >= 0){
  print("The number is positive")
}else{
  print("The number is negative")
}

#NESTED IF statement -----
#Multiple conditions

# if(expression1){
#   statement1
# }else if(expression2){
#   statement2
# }else if(expression3){
#   statement3
# }else if(expression4){
#   statement4
# }else if(expression5){
#   statement5
# }else{statement6}

number

if(number <0 ){
  print("This is a negative number")
}else if (number > 0){
  print("This is a positive number")
}else{
  print("This is zero")
}


#Apply to DF-----
taxes <- data.frame(Name = c("Zippy","Carlvin", "James", "RichKid", "Hustler"), Age = c(56,76,18,16,18),
                    Salary = c(50000,20000,7000, 100000, 11000))

library(dplyr) #Load dplyr package for data manipulation.
mutate(taxes, ShouldBeTaxed = ifelse(Age >= 18 & Salary >= 10000, "YES", "NO"))

taxClasses <- filter(taxes, Age >= 18 & Salary >= 10000) %>% mutate(Class =
                                                                      ifelse( Salary > 20000, "A",
                                                                                    ifelse(Salary >=15000 & Salary <= 20000 , "B",
                                                                                           ifelse(Salary>=10000 &  Salary < 15000,
                                                                                                  "C", "X"))))
