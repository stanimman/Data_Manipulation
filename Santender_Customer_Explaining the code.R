# My practice
for ( f in 1:4)
{
  print(f)
}

## Removing identical features
features_pair <- combn(names(train), 2, simplify = F)
## combn function makes all possible combination of given vector ## eg   
testvar <- combn(c(1:4), 3 , simplify = F)  ## here it will take the 4 element (1,2,3,4) and make all possible combo
class(testvar)
f1 <- testvar[3]
f2 <- testvar[4]
f1
f2
# output      [,1] [,2] [,3] [,4]
##            [1,]    1    1    1    2
##            [2,]    2    2    3    3
##            [3,]    3    4    4    4

class(features_pair)  ## simplify = FALSE  returns the the output in list 

list1 <- (c("1","3","4","3"))
list1
for(n1 in names(train))
{
  print(n1)
}

