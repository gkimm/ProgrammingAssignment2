## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m.inv <- NULL
  set <- function(y) {
    x <<- y
    m.inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inv) m.inv <<- inv
  getinverse <- function() m.inv
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m.inv <- x$getinverse()
  if(!is.null(m.inv)) {
    message("getting cached data")
    return(m.inv)
  }
  mat <- x$get()
  m.inv <- solve(mat)
  x$setinverse(m.inv)
  m.inv
}
