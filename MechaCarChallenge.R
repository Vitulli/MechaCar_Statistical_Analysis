#------------------------------------------------------------------------------------#
#Deliverable 1

library(dplyr)

MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors=F)

lm(vehicle_length ~ mpg, MechaCar_mpg) #This creates a linear regression for MechaCar.

summary(lm(vehicle_length ~ mpg, MechaCar_mpg)) #Summary for the above.

#-----------------------------------------------------------------------------------#
#Deliverable 2
Suspension_Coil <- read.csv(file='Suspension_Coil.csv', check.names=F, stringsAsFactors=F)

total_summary <- Suspension_Coil %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Variance=var(PSI),SD=sd(PSI),.groups = 'keep')

lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Variance=var(PSI),SD=sd(PSI),.groups = 'keep')
