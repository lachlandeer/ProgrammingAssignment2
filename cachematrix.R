##################################################################
# cacheMatrix.R
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
    ## @x: pass a square, invertible matrix
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
      } # end matDefine function
    
    matRetrive <- function( ) x  # return the input matrix
    
    matInverse         <- function( inverse ) invMat <<- inverse
    matInverseRetrive  <- function( ) invMat
    
    list( matDefine = matDefine, matRetrive = matRetrive, 
          matInverse = matInverse, matInverseRetrive = matInverseRetrive )
  } # end makeCacheMatrix function


cacheSolve <- function(x, ...) {
        ## @x: output of cached matrix
        ## return: inverse of the matrix
  
        invMat <- x$matInverseRetrive()
        
        # if already calculated the inverse:
        if(!is.null(invMat)){
              # get from the cache
              message("getting inverse from cache")
              return(invMat)
        } # end if statement
        
        # otherwise compute inverse ...
        message("computing the inverse")
        mat.solve <- x$matRetrive()
        invMat <- solve(mat.solve, ...)
        
        # ... and then cache it
        x$matInverse(invMat)
        
        # and return it to user
        return(invMat)
} # end cacheSolve function
