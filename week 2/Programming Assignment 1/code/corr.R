corr <- function(directory, thresold = 0){
        filesList <- list.files(path = directory, pattern = ".csv", full.names = TRUE)
        
        num <- numeric()
        
        for(i in filesList){
                data <- read.csv(filesList[i])
                num <- complete.cases(data)
                cor(sulfate, nitrate, use = "all.obs" > thresold, method = c())
                
        }
        
        
}