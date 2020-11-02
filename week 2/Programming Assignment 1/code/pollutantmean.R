pollutantmean <- function(directory, pollutant, id = 1:332){
        fileList <- list.files(path = directory, pattern = ".csv", full.names = TRUE)
        num <- numeric() 
        
        for(i in id){
                data <- read.csv(fileList[i])
                num <- c(num,data[[pollutant]])
        }
        mean(num, na.rm = TRUE)
}


