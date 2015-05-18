## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##  This function takes a matrix as paramater or creates an empty matrix and an inverse variable. 
makeCacheMatrix <- function(x = matrix()) {
    inverse <- NULL  # inverse variable
    set <- function(y){ # set allows you to reset the x matrix variable. 
      x <<- y   
      inverse <<- NULL
    }
    get <- function() x #get returns the amtrix
    setinverse <- function(inv) inverse <<- inv  # set inverse sets the inverse matrix
    getinverse <- function() inverse  # get inverse returns the inverse 
    list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Returns a matrix that is the inverse of 'x'
    inverse <- x$getinverse()   # gets the inverse of x
    if(!is.null(inverse)) {  #if the value is not NULL thne it returns the inverse
      message("getting cached data")
      return(inverse)
    }
    data <- x$get()  # gets the x matrix
    inverse  <- solve(data)  # sets the inverse
    x$setinverse(inverse)  # caches in the inverse vaialbe of the x matrix. 
    inverse 
}
