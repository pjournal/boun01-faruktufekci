convert_temperature(degree = 30, F_to_C = FALSE) <- function(degree=30, F_to_C = FALSE){
  if(F_to_C == FALSE){
    return ((degree*1.8)+32)
  }
  else {return ((degree-32)/1.8)}
}

calculate_future_value(investment = 100, interest = 0.07, duration_in_years = 5) <- function(investment = 100, interest = 0.07, duration_in_years = 5){
  return(investment*((1+interest)^duration_in_years))
}

get_prob_dice(k = 3, n = 5) <- function(k = 3, n = 5){
  return((factorial(n) / factorial(n-k) / factorial(k)) * (1/6)^k * (5/6)^(n-k))
}

rsp_game(move = "rock") <- function (move="rock") {
  opts <- c("rock", "paper", "scissors")
  stopifnot(length(move) == 1L, move %in% opts)
  cpu <- sample(opts, 1)
  names(cpu) <- if (identical(move, cpu)) {
    s= "It's a Tie!"
  }
  else if (move == "rock" & cpu == "scissors" | move == "paper" & 
           cpu == "rock" | move == "scissors" & cpu == "paper") {
    s= "You Win!"
  }
  else {
    s= "You Lose!"
  }
  paste("I chose", paste(cpu, ".", sep = ""), s, sep=" ")
}