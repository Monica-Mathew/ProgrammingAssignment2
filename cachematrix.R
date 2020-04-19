## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) { ##can cache the inverse
  inver<-NULL ## holds the value of the inverse matrix
  set<-function(y){
    x<<-y
    inver<<-NULL ##<<- assign a value to an object in an environment that is different from the current environment
  }
  get <- function(){ ## returns the matrix x
    x
  }
  setinverse <- function(inverse)
  {
    inver <<- inverse
  }
  getinverse <- function() ## returns the value of the matrix argument
  {
    x
  }
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inver<-x$getinverse()
  if(!is.null(inver))
  {
    return(inver)
    message("The cached inverse of the matrix returns")
  }
  data<-x$get() ##get the matrix
  inver<-solve(data, ...) ## get the inverse of the matrix
  x$setinverse(x)  ##set the inverse
  x
}
