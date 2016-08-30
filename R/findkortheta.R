findKorTHETAforGamma <- function(halflife = 100, theta, k){
  g <- function(x){
    ((x^(theta - 1)) * (exp(-x/k))) / (gamma(theta) * (k^theta))
  }

  if(missing(k)){
    k <- 1
    decayval <- 1
    while(abs(decayval - 0.5) > 0.0001){
      l <- decayval * 1.6
      k <- k * l

      decayval<-integrate(g, lower=0, upper=halflife)$value
    }
    return(k)
  }
  if(missing(theta)){
    theta <- 1.2
    decayval <- 1
    while(abs(decayval - 0.5) > 1e-14){
      l <- decayval / 0.5
      theta <- theta * l

      decayval<-integrate(g, lower=0, upper=halflife)$value
    }
    theta
  }
}


