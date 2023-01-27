# Cheat function that takes the question number as an argument 
# and returns the correct answer

cheat <- function(ex_number){
  
  answer <- ""
  
  if(!is.numeric(ex_number)){
    stop("Input must be a number")
  }
  
  if(ex_number == 1){
    answe <- cat("Answer: exam_grades <- rnorm(60, mean = 7, sd = 2.5)\nhist(exam_grades)")
  } else if(ex_number == 17) {
    answer <- ("Answer: the keyboard shortcut that automatically formats
                your highlighted R code is Ctrl+Shift+A")
  } else if(ex_number == 16){
    answer <- ("Answer: matrix(1:9, nrow = 3, byrow = TRUE) * c(1:3)")
  }
  
  return(answer)
}