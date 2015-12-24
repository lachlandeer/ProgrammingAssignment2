##################################################################
#
#          Caching the Inverse of a Matrix
#
# Source: rProgramming via Coursera and JHU,
#         Programming Assigment 02
#
#
# What this function does:
#     - We want to cache the inverse of a matrix. To do this we
#       work as follows:
#         (i) define "makeCacheMatrix()"
#             - A special matrix object that caches it inverse
#         (ii) cacheSolve()
#             - computes the inverse of a matrix returned from
#               makeCacheMatrix().
#             - An already cached matrix will have inverse retreived,
#               otherwise computes the inverse
#
# Author(s) : Lachlan Deer (LD)
#
# Edit History:
# 2015-12-24 - LD - Created File
##################################################################


makeCacheMatrix <- function(x = matrix()) {
    ## @x: pass a square. invertible matrix
    ## 
    ## return: list that contains following functions
    ##            1. define the matrix
    ##            2. retrive the matrix
    ##            3. find the inverse
    ##            4. return the inverse
    ##
    ## We can then use this list as input to cache solve
  
    invMat <- NULL
    
    matDefine <- function( y ){
          ## "<<-" assigns value to an object from a different environment
          ## than th current one
      
          x      <<- y
          invMat <-  NULL
      }
    
    matRetrive <- function( ) x  # return the input matrix
    
    matInverse         <- function( inverse ) inv <<- inverse
    matInverseRetrive  <- function( ) inv
    
    list( matDefine = matDefine, matRetrive = matRetrive, 
          matInverse = matInverse, matInverseRetrive = matInverseRetrive )
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
