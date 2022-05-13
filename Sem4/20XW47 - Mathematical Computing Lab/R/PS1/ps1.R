1.

library(lpSolve)

f.obj <- c(750,1000)
f.con <- matrix (c(1,1,1,2,4,3), nrow = 3, byrow=TRUE)
f.dir <- c("<=","<=","<=")
f.rhs <- c(10000,15000,25000)

s = lp("max",f.obj,f.con,f.dir,f.rhs)
s
s$solution

2.

library(lpSolve)

f.obj <- c(600,500)
f.con <- matrix (c(5,2,1,6,3,3), nrow = 3, byrow=TRUE)
f.dir <- c(">=",">=",">=")
f.rhs <- c(24,18,24)

s = lp("min",f.obj,f.con,f.dir,f.rhs,all.int=TRUE)
s
s$solution

3.

library(lpSolve)

f.obj <- c(7,5)
f.con <- matrix (c(4,3,2,1), nrow = 2, byrow=TRUE)
f.dir <- c("<=","<=")
f.rhs <- c(240,100)

s = lp("max",f.obj,f.con,f.dir,f.rhs,all.int=TRUE)
s
s$solution

4.

library(lpSolve)

f.obj <- c(3,4)
f.con <- matrix (c(4,2,2,5), nrow = 2, byrow=TRUE)
f.dir <- c("<=","<=")
f.rhs <- c(80,180)

s = lp("max",f.obj,f.con,f.dir,f.rhs,all.int=TRUE)
s
s$solution

5.

library(lpSolve)

f.obj <- c(8 * (5 + 0.03*40*3), 8 * (4 + 0.05*30*3 ))
f.con <- matrix (c(320,240,1,0,0,1), nrow = 3, byrow=TRUE)
f.dir <- c(">=","<=","<=")
f.rhs <- c(2000,9,11)

s = lp("min",f.obj,f.con,f.dir,f.rhs,all.int=TRUE)
s
s$solution

6.

library(lpSolve)

f.obj <- c(5000,8500,2400,2800)
f.con <- matrix (c(800,925,290,380,0,0,1,1,0,0,290,380,1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1), nrow = 7, byrow=TRUE)
f.dir <- c("<=",">=","<=","<=","<=","<=","<=")
f.rhs <- c(8000,5,1800,12,5,25,20)

s = lp("max",f.obj,f.con,f.dir,f.rhs,all.int=TRUE)
s
s$solution

7.

library(lpSolve)

f.obj <- c(3,5,3)
f.con <- matrix (c(3,4,0,3,5,0,0,0,1), nrow = 3, byrow=TRUE)
f.dir <- c("<=","<=","<=")
f.rhs <- c(18,21,5)

s = lp("max",f.obj,f.con,f.dir,f.rhs,all.int=TRUE)
s
s$solution


8.

library(lpSolve)

f.obj <- c(5, 4, 3, 2, 1)
f.con <- matrix (c(1/3, 0, 0, 0, 0, 1/3, 1/3, 0, 0, 0, 1, -1/3, -1/3, 0, 0, 1, 1, -1/3, -1/3, 0, 1, 1, 1, -1/3, -1/3, 1, 1, 1, 1, 1), nrow = 6, byrow=TRUE)
f.dir <- c("<=", "<=", ">=",">=", ">=", "=" )
f.rhs <- c(20, 2, 5, 60, 100, 150)

s = lp("min",f.obj,f.con,f.dir,f.rhs,all.int=TRUE)
s
s$solution

9.

library(lpSolve)

f.obj <- c(0.07,0.11,0.19,0.15)
f.con <- matrix (c(1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1,0.55,0.55,-0.45,-0.45,-0.85,0.15,0.15,0.15,1,1,1,1), nrow = 7, byrow=TRUE)
f.dir <- c("<=","<=","<=","<=","<=","<=","<=")
f.rhs <- c(1,2.5,1.5,1.8,0,0,5)

s = lp("max",f.obj,f.con,f.dir,f.rhs)
s
s$solution

