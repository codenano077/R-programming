sieve_of_eratosthenes <- function(limit) {
  n_prime <- rep(TRUE, limit)  
  n_prime[1] <- FALSE         
  
  p <- 2                     
  
  while (p^2 <= limit) {      
    if (n_prime[p]) {       
      k <- p * 2            
      while (k <= limit) {
        n_prime[k] <- FALSE
        k <- k + p           
      }
    }
    p <- p + 1               
  }
  
  prime <- which(n_prime)    
  return(prime)
}
 limit<-as.integer(readline(prompt = "enter a limit"))
 if(limit<2)
 {
   cat("Enter a valid limit");
 }else
{
  prime_number<-sieve_of_eratosthenes(limit)
  cat("Prime number upto ",limit,"are",paste(prime_number),"\n");
}