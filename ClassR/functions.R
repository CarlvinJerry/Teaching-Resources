#Building user-defined functions----
#Syntax
functionName <- function(input){
  execution
}

#Example
addsTen <- function(numbers){
  numbers+10
}

addsTen(25)
addsTen(numbers)




#REPEAT FUNCTION ------
#Syntax
repeat{
  if(condition){
    break
  }
}

#Example

sum <- 0

repeat{
  sum= sum+1
  print(sum)
  if(sum==101){
    print("the loop ends here!");
    break
  }
}


#REPLICATE FUNCTION ------
#Syntax
rep(value,numberOfTimes)
rep(seq,each,numberOfTimes)

#Examples
rep(13,5)

rep(12, len = 5)

rep(1:3, len = 5)

rep(1:3, 5)

rep(addsTen(20),5)

rep(names <- list(names = c('Carlvin','ZIppy','James')),3)

names <- list(names = c('Carlvin','ZIppy','James'))
rep(names,3)



















