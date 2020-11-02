complete <- function(directory, id = 1:332){
        fileList <- list.files(path = directory, pattern = ".csv", full.names = TRUE)
        
        nobs <- numeric() #initializing
        
        for (i in id) {
                data <- read.csv(fileList[i])
                nobs <- c(nobs ,sum(complete.cases(data)))
        }
        data.frame(id, nobs)       
}

