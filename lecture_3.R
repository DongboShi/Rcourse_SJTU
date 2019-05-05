# lecture 3
x <- c("a","b","c","c","d","a")

x[c(T,T,T,F,F,F)]

x[c(1,3)]

x[c(F,T,T,T,T,T)]

x="c"

x[x=="c"]
 
# equal == 
# less than <
# >
# <=
# >=
# != 

y <- 1:6

# subset elements that "<=4 and >=2" from
y1 <- y[y <= 4]
y2 <- y1[y1 >= 2]

y[y<=4 & y >=2]

y<=4 & y >=2

# subset from x using x <= "c"
x[x <= "c"]
# subset all "a" and "d" elements from x
x[x =="a" | x == "d"]
x[x %in% c("a","d")]
# logical 
# !
# or |
# and &

# list 
x <- list(id = 1:4, bar = 0.6, baz = "hello")
x[x>=1]
names(x)
x$bar

# matrix
z <- matrix(1:6, 2, 3)
z[1,2]
z[2,]
z[,3]

# dataframe

name <- c("a","b","c","c","d","a")
id <- 1:6
male <- c(T,T,T,F,F,F)
df <- data.frame(name, id, male,stringsAsFactors = F)
df$x[df$x=="c"]
# sum(df$x=="c")
df$y
df$z
names(df)
df[c("id","male")]

#subset(df,select=x)

# calculate the sum of 1 to 100

# for loops
sum <- 0
for(i in 1:100){
  sum <- sum + i
}

i <- 1
sum <- 0

while(i <= 100){
  sum <- sum +i
  i <- i + 1
}

# exercise
# function(n)
f <- 0
f1 <- 1
f2 <- 1
sum <- 2
for(i in 3:100){
  f <- f1 + f2
  sum <- sum + f
  f1 <- f2
  f2 <- f
}

# if else
for(i in 1:100){
  if((i %% 3) == 0){
    print(i)
    }else if((i%%3==1)){
    print("a")
      }else{
    print("b")
  }
}
male <- c(T,T,T,F,F,F)
gender <- ifelse(male,"Male","Female")
# gender <- rep("Male",6)
# gender[!male] <- "Female"

gender

ifelse()

#if(){}

# while loops
# repeat loops
# function
x<-vector(mode="numeric",length=0)
x[1] = 1
x[2] = 1
for(i in 3:100){
  x[i]<-x[i-2]+x[i-1]
}
sum(x)
