# Learning R 


my_numeric <- 42
my_charecter <- "universe"
my_logical <- TRUE

class(my_numeric)
class(my_charecter)
class(my_logical)

# This is  a single line comment in R

if(FALSE){
  "This is a trick to do multi line
  comment 
  yes 
  "
}

# Types of R objects 
 # Vectors -- Dimension - 1 , Data type - multi 
 # Lists -- Dimension - multi , Data type - multi
 # Matrices -- Dimension - multi , Data type - 1
 # Arrays -- Dimension - multi , Data type - multi
 # factors -
 # Data Frames

# Vector - multi data type 
apple <- c('red','green','yellow')
print(apple)

mil <- c('green',10,TRUE)
print(mil)
class(mil)
c()
print(class(apple))

chek <- c(c(1,2,3),c(2,3,4))
print(chek)
print(class(chek))


# Lists  -- multi data type
list1 <- list(c(2,3,4),21.2,sin)
print(list1)

# Matrices - tabular , same data type

M <- matrix(c('a','a','b','c','b','a'), nrow = 2, ncol = 3, byrow = TRUE)
print(M)

# Arrays 

a <- array(c('green','yellow','red'),dim =c(3,3,2))
print(a)
b <- array(c(123,'yellow',TRUE),dim =c(3,3,2))
print(b)

# Factors
 # Distinct objects in a vector
vec <- c('green','green','yellow','red','red','red','green')

 # create factor 
fac <- factor(vec)
print(fac)
print(nlevels(fac))

# Data Frame  - tabular like Matrix multi data type 
BMI <- data.frame(
    gender = c('Male','Female'),
    height = c(171,165),
    weight = c(75,70),
    age = c(34,32)
    )
print(BMI)


# Variables 
# Naming convention, - start with char , cannot contain any special char except dot and underscore 
# sample valid ones
var <- 'test'
.var2 <- 'start with dot'
var3. <- 'end with dot'
var4.set <- 'have dot in between'
var_5 <- 'have _in between'

# sample invalid variable definitions
.2var <-  'dot followed by number'
3var <- 'starting with number'
_var <- 'starting with _'
var% <- 'contains percentage symbol'

# Variable Assignment

# equal to operator
var1 = c(1,2,3)
print(var1)

# leftward operator
var2 <- c(4,5,6)

# rightward operator 
c(TRUE,9) -> var3 # the TRUE boolean will be coerced as 1 

# cat function to concatenate variables
cat("var1 is ",var1,"\n")
cat("var2 is ",var2,"\n")
cat("var3 is ",var3,"\n")

# Data type  of  the variable can be found from class function
cat ("Class of var1 is ",class(var1),"\n")
cat ("Class of var1 is ",class(27L),"\n")

# List the variables 
print(ls())

# list based on name pattern
print(ls(pattern = "al"))

# list the hidden variables as well
print(ls(all.names = TRUE))

# deleting the variables 
rm(mil)
print(mil)

rm(list = ls())
ls()


# R Operators

# Arithmetic 
a <- c(1,2,3)
b <- c(4,5,6)
c <- a + b
print(c)
sum <- a + b
sub <- b-a
mul <- a * b
div <- a / b # result will be float
mod <- a%%b # modulus 
div_q <- a%/%b # result will be int
exp <- a^b

cat("Sum is ",sum, "\n")
cat("sub is ",sub, "\n")
cat("Mul is ",mul, "\n")
cat("div is ",div, "\n")
cat("mod is ",mod, "\n")
cat("div_q is ",div_q, "\n")
cat("exp is ",exp, "\n")

d <- c(7,8)
print(a+d)

e <- c(9)
print(a+e)

# Relational Operators > , < , == , !=  , Compares element wise
print(a>b)
print(a<b)

# Logical operators & , | , !
print(a&b)
print(TRUE|FALSE)
print(!TRUE)
print(a&&b) # compares first element alone

# Misc Operators
# Colon - for range 
r <- 1:10
print(r)

# %in % similar to SQL in
print(5 %in% r)
print(11 %in% r)

# %*% Matrix multiplication
M <- matrix(c(1,2,3,1,2,3),nrow=2,ncol=3,byrow = TRUE)
res <- M %*% t(M)
print(res)


# Conditional Statements 

# if 
x <- 30L
if (is.integer(x)){
  print("x is integer")
} else {
  print("x is not interger")
}

# Loop statements 
# repeat 

v <- "For repeat"
cnt <- 1
repeat {
  print(v)
  cnt <- cnt + 1
  if (cnt >= 5){
    break
  }
}

# while

while(cnt <= 10){
  print(v)
  cnt <- cnt + 1 
}

# for  loop
alp <- LETTERS[1:5]
for (i in alp){
  print(i)
}

# next
alp <- LETTERS[1:8]
for (i in alp){
  if (i == "D"){
    next
  }
  print(i)
}


# R functions 
# Similar to funtions in other languages takes argument but name of function is assinged similar to variable
fun_name <- function(arg1 = 'default1',arg2) {
  print(arg1)
  return (arg2^2)
}

print(fun_name(arg2 = 4))

# String 
# Valid Strings 
s1 <- 'within single quotes'
s2 <- "within double quotes"
s3 <- 'double quotes " within single quotes'
s4 <- "single quote ' within double quotes"

# Invalid Strings
s5 <- 'single quote ' within single quote''
  # corrected
  s5 <- 'single quote \' within single quote using escape sequence'
  s6 <- "same \" with double quotes "
  
# String Manupulation 

# Concatenation 
  print (paste(s1,s2,s3,sep = " ", collapse = " "))

# Format
  format(x, digits, nsmall, scientific, width, justify = c("left", "right", "centre", "none")) 
  
# counting number of charecters in a string 
  nchar(s2)
  
# case change
  toupper(s1)
  tolower(s3)
# substring(string,first,last)
  substring(s1,4,19)
  
# Vector 
  
# Single element vectors aka atomic vectors
  v1 <- 2 
  print(class(v1))
  v2 <- 2.5
  print(class(v2))
  v3 <- 35L
  print(class(v3))
  v4 <- TRUE
  print(class(v4))
  v5 <- (3 + 4i)
  print(class(v5))
  v6 <- charToRaw("hello")
  print(v6)
  print(class(v6))
  
# Multiple Element vector
  # Numeric
    # using colon
    v7 <- 3:10
    print(v7)
    v8 <- 1.1:10.1
    print(v8)
    v9 <- 1.1:10.2 # 10.2 will be discarded as is does not come in seq
    print(v9)
    
    # using seq 
    v10 <- seq(1,10,by = 2)
    print(v10)
    
    # using c() function
    v11 <- c('apple','red',5,TRUE)
    print(v11)
    print(class(v11))
    
# Accessing Vector elements
  # using position
    t <- c('Sun','Mon','Tue','Wed','Thu','Fri','Sat')
    u <- t[c(2,3,6)]
    print(u)
  # using logical indexing
    v <- t[c(TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,TRUE)]
    print(v)
  # negative indexing
    x <- t[c(-2,-4)] # remove those elements 
    print(x)
  # using 0/1 indexing 
    y <- t[c(1,0,0,0,0,0,0)] # similar to logical indexing
    print(y)
    
# Vector Manupulation
  # Vector Arithmetic
    v1 <- c(3,8,4,5,0,11)
    v2 <- c(4,11,0,8,1,2)
  
    # Addition 
    add.result < v1 + v2
    print(add.result)
    
    # Subtraction
    sub.result <- v1 - v2 
    print(sub.result)
    
    # Multiplication
    mul.result <- v1 * v2
    print(mul.result)
    
    # Division
    div.result <- v1 / v2
    print(div.result)
    
  # Vector Recycling
    # Performing Arithmetic operations on unequal vectors 
    # Elements of shorter vector recycles to complete the operations
    v3 <- c(4,11)
    
    add.result <- v1 + v3
    print(add.result)
    
  # Vector Element sorting 
    # Numerical vector
    v <- c(3,8,4,5,0,11, -9, 304)
    sort.result <- sort(v) # default asc
    print(sort.result)
    
    sort.result <- sort(v,decreasing = TRUE) # descending
    print(sort.result)
    
    # Charecter vectors
    v <- c("Red","Blue","yellow","violet")
    sort.result <- sort(v)
    print(sort.result)
    
    sort.result <- sort(v,decreasing = TRUE)
    print(sort.result)
    
# Lists 
    # Syntax is using a list keyword
    list.data <- list('Red','Green',c(1,2,3),TRUE,33.44)
    print(list.data)
    
    # Naming the list elements 
    names(list.data) <- c('fg_color','bg_color','dimensions','visible','area')
    print(list.data)
    
    # Accessing List elements
    
   
