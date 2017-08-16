


pollutantmean <-function(directory,pollutant,id=1:332){
     
     ## collect list of files from specified directory
     monitors<-list.files(directory,full.names = TRUE)
     
     monitors
     existing_data<- data.frame()
     
     
     ## use a for loop to collect data into one vector
     for(i in id){
          #print(c("Reading monitor data from",monitors[i]))
          new_data<-read.csv(monitors[i])
          existing_data<-rbind(existing_data,new_data)
          
     }
     
     mean(existing_data[,pollutant],na.rm = TRUE)
}


## for data analysis changing the direcotry
setwd("C:/Users/sayef/Documents/Data_Science/Projects/Air_pollusion")


x<-pollutantmean("specdata", "sulfate", 1:10)
x<-pollutantmean("specdata", "nitrate", 70:72)
x<-pollutantmean("specdata", "nitrate", 23)

# 
# monitor_data<-read.csv("001.csv", "specdata")
# monitor_data
# 
# id<-1:10
# 
# monitors<-list.files("specdata")
# 
# monitors
# 
# class(monitors)
# 
# id
# 
# monitors[id]
