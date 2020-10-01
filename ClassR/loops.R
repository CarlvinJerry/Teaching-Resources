#FOR Loop--------------
#Recurring process/task
#Syntax
for(i in 1:n){
  execution/statement
}


#Squares

numbers <- c( 22,12,1:10)

##1
for (i in 1:10){
    print(i ^ 2)
  }

#2
for (value in numbers){
  print(value ^ 2)
}


#3
for(i in 1:length(numbers)){
  print(numbers[i]^2)
}


#---NESTED FOR LOOP-------------------
# A loop inside a loop
#Syntax
for(i in 1:n){
  for(j in 1:n ){
    Statement/execution
  }
}


numbers2 <- c(5,6,7)

for(i in numbers){
  for (j in numbers2){
    print(i + j)
  }
}



#BREAKING LOOPS----------
#Breaking statement
numbers <- c(2,4,9,6,15,78)
for (i in numbers){
  if(i == 6){
    print(i * 2)
   break
  }
  print (i)
}



#Next

for (i in numbers){
  if(i ==6){
    next
  }
  print(i)
}




#WHILE LOOPS------------------------------------
#Syntax---
while(condition){
  statement/execution
}

#Example---
i = 10
while(i <= 100){
  print (i^2)
  i = i + 1
}



#BREAK STATEMENT FOR WHILE LOOP-------

#Example---

i = 1
while(i <= 10){
  if(i == 3){
    break;}
  print (i^2)
  i = i + 1
}


#NEXT STATEMENT FOR WHILE LOOP-------

#Example---


i = 1
while(i <= 10){
  if(i == 5){
    i=i+1
    next;
    }
  print (i^2)
  i = i + 1;
}
