##################################################################
# test.R
#
#          Test: Caching the Inverse of a Matrix
#
# Source: rProgramming via Coursera and JHU,
#         Programming Assigment 02
#
#
# What this function does:
#     - We want to test the performance of the cacheMatrix.R function
#         - Pass test() a matrix, 
#                 (i) compute inverse first when not cached, timed
#                 (ii) compute again, but actually get from cache, timed
#                 (iii) Compare times
#
# Author(s) : Lachlan Deer (LD)
#
# Edit History:
# 2015-12-24 - LD - Created File
##################################################################

test <- function( z ){
        ## @z: pass an invertible matrix
  
        tmp <- makeCacheMatrix( z )
        
        # not cached
        start.time.1 <- Sys.time( )
        cacheSolve( tmp )
        duration.noCache <- Sys.time( ) - start.time.1
        print( duration.noCache)
  
        # cached
        start.time.2 <- Sys.time( )
        cacheSolve( tmp )
        duration.cache <- Sys.time( ) - start.time.2
        print(duration.cache)
}