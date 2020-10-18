# Factors
#Syntax
factor()


#Example
months = c("Feb","Jan", "Feb", "Mar", "Apr", "May","Jan", "Feb", "Mar")
table(months)

#Unordered factors
month.factors = factor(months, levels = c("Jan", "Feb", "Mar", "Apr", "May") )
table(month.factors)
#Ordered factors
month.factors.ordered = factor(months, levels = c("Jan", "Feb", "Mar", "Apr", "May"), ordered = T )
table(month.factors.ordered)



#Generating factor levels
#Syntax
gl(n, k, labesls)
#
# n = Integer showing number of levels
# k = integer showing replications of levels
# labels = vector of labels for the factor levels

#Examnple
df <- gl(3,4, labels = c("Africa","Asia", "America"))
table(df)
