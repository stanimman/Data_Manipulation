m <- matrix( 1:36 , ncol = 6)
m[3, ]  # similar to list gives the first row
m[,3]  # subseting the 3rd columns
m[3,c(1,5)] #subseting the 1 & 5 element from the row # 3
m[-1,] # gives the matrix without first row 
m[-3,-5] # without row 3 & col 5
m[4,5] <- 5 # assign 5 to the specified elements
m[ ,2] <- 1:6
y <- m > 25
y
m[y]
m[m>25] <- 0
m

## ----- subsetting with another matrix ----- 
n <- matrix(1:6,ncol = 2)
n
m[n]
m[3]   ## single number in the square bracket , treats like vector

getwd()
## Data frame 

j <- datasets::"mtcars"
write.csv ( j, "cars1.csv")
df <- read.csv("cars1.csv")
df
names(df)
colnames(df)
rownames(df)
head(df,10)
tail(df)
mpg <- df$mpg
mpg
highermpg <- df[df$mpg > 25,]
highermpg
newset$number <- c(12,34,56,67)
merge.data.frame(newset,df)

## Merge <- Two dataframe can be merged into one dataframe based on one column, the identical column on both the dataframe
## Aggregate funciton
aggregate(df ~ mpg,list(df$gear),mean)
?aggregate
df

## functions
cube1 <- function(n) { n^3}
cube1(3)
## ... argunment 
## Local variables - scope of all variable defined inside the function is restricted to the function
## Return variable - by default the last expression in the function is evalated and returend 
## If you want to return multiple elements then return a list as follow
cubesq <- function (n) { 
     a <- n^2
     b <- n^3
     list(a,b)
}
cubesq(2)
## To exit a function before it reaches the last line, use the return function. Any code after the return statement inside a function will be ignored. For example:
myf <- function(x,y) {
  z1 <- sin(x)
  z2 <- cos(y)
  if(z1 < 0){
    return( list(z1,z2))
    else{
      return( z1+z2)
    }
  }
}


## Scoping rule - Lexical scoping (Try to find and assign the variable in the environment in which 
## it is defined)

myf <- function(x)
{
  y=6
  z = x + y + a1
  a2 = 9
  insidef = function(p){
    tmp = p*a2
    sin(tmp) }
  2*insidef(z)
}
myf(2)
## The variabel "a1" is not defined in the environment  (myf) so it throws error 
## but the variable "a2" in the environment  insidef is already defined in myf where the function is defined

## In the above function
## • x, p are formal arguments.
## • y, tmp are local variables.
## • a2 is a local variable in the function myf.
## • a2 is a free variable in the function insidef.

## The above execution also show the lazy evaluation of the function / dont throw error unless evaluated

## Control Flow

# if , for , while , repeat , 
eval <- function(n)
{
  if ( n > 1)
{
  print("greater than one")
}
else
{
  print("less than one")
}
}

eval(5:10)


## For loop most commonly used function to iterate over vector/list/matrix/dataframe
v1 <- c(1:10)
x <- c("a", "b", "c", "d")
## Method 1  # i will take the element of the vector not the position 
for(i in x) 
{
  print(i)
}

## i is just the iterator
for(i in seq_along (x))
{
  print(x[i])
}
# seq_along takes the length of vector

## While is repeat until a condition is satisfied

repeatfn <- function (n)
{
  i = 1 
  a <- list()
while (n < 5)
{
  n = n+1
  a[i] <- n
  i = i+1
}
  a
}

repeatfn(-10)

ls()

## apply function (similiar to colsum/rowsum)
m
apply(m, 1, sum)
m[,c(2,3)]
l1 <- apply(m[,c(2,3)], 1, function(x)(c(sum(x),min(x))) )
l1
for (i in l1)
{
 print(i[1])
}
## apply function apply one function to a row/margin (avoid it for dataframe, as it will convert the df into matrix)

## lapply fucntion - When you want apply a function to each element of list and get list in return
## each element of list 
l1
class(l1)
class(q[2])
q <- list(a = 1, b = 1:3, c = 10:100) 
lapply(q, FUN = sum) 

## sapply is similiar to lapply but return a vector instead of list

## vapply - When you want to use sapply but perhaps need to squeeze some more speed out of your code

## tapply - the beauty amongst the apply function with function similiar to pivot
tapply(df$mpg,list(df[,1],df$gear),mean)

## mapply 
?mapply
mapply(function(x, y) seq_len(x) + y,
       c(a =  1, b = 2, c = 3),  # names from first
       c(A = 10, B = 0, C = -10))
?seq_len
## seq_len  -- generate sequance starting from and length defined by the input argument
seq_len(3) 

