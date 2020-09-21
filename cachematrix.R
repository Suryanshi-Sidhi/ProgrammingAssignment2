
## Write a short comment describing this function
#function to get the matrix
makeCacheMatrix <- function(x = matrix()) {
  
  #initiliase the inverse property 
  i <- NULL
 
  #Method to set the Matrix 
  set <- function(matrix){
    m<- matrix
    i<- NULL
  }
  #Method to get the Matrix
  get<- function(){
    m#return the matrix
  }

  #Method to inverse the Matrix
  setInverse<- function(inverse){
    i<- inverse
  }

  #Return a list of the method
  list(set = set , get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}
     
## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
     m<- x$getInverse()
     
     #just return the inverse if it is already set
     if(!isnull(m)){
       
       message("getting cached data")
       return(m)
     }
     #get the matrix from our object
     data<-x$get
     
     #Calculate the inverse using matrix multiplication
     m <- solve(data) %% data
     
     #Set the inverse to the object
     x$setInverse(m)
     
     #return the matrix
     m
}
