
#=======================================#
#      R PROGRAMMING: ASSIGNMENT 2      #
#=======================================#


## Put comments here that give an overall description of what your
## functions do

# The following functions should be able to:
# 1) create a special "matrix" object that can catch its inverse.
# 2) get the inverse from the cache and use it for the calculation 
# (if it has already been calculated), or, otherwise, calculate the 
# inverse of the matrix from data and set this value in the cache.


## Write a short comment describing this function

# The aim of this function is to: 
# 1. set the value of the matrix
# 2. get the value of the matrix
# 3. set the value of the inverse of the matrix
# 4. get the value of the inverse of the matrix


makeCacheMatrix <- function(x = matrix()) {
                                        m <- NULL
					set <- function(y) {
					x <<- y
					m <<- NULL
				}
				get <- function() x
				setinverse <- function(inverse)   m <<- inverse
				getinverse <- function()  m
				list(set = set, get = get,
		    		     setinverse = setinverse,
		     		     getinverse = getinverse)		
			}




## Write a short comment describing this function


# The aim of this function is to: 
# 1. check to see if the inverse of the matrix has already been calculated,
# and, if it is so, get this value from the cache and use it for the computation.
# 2. calculate the inverse of the matrix from data (when the inverse has not been
# calculated yet), and set the value in the cache.  


	cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
				m <- x$getinverse()
				if(!is.null(m)) {
				     message("getting cached data")
				     return(m)
						    }
		data <- x$get()
		m <- solve(data, ...)
		x$setinverse(m)
		m			

		}
		
		
		
		
		
		
