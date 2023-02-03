library(dplyr)
library(tidyverse)
#Deliverable 1 
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv')
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + 
     AWD, data=MechaCar_mpg)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
             ground_clearance + AWD + mpg, data=MechaCar_mpg))

#Deliverable 2 
Suspension_Coil <- read.csv(file='Suspension_Coil.csv')
total_summary <- Suspension_Coil %>% summarize(Mean_PSI=mean(PSI),
                                               Median_PSI=median(PSI),
                                               Variance_PSI=var(PSI),
                                               SD_PSI=sd(PSI)) 

lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% 
  summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance_PSI=var(PSI),
            SD_PSI=sd(PSI)) 

#Deliverable 3 
t.test(Suspension_Coil$PSI, mu=1500) 

t.test(subset(Suspension_Coil, Manufacturing_Lot == "Lot1")$PSI, mu=1500) 

t.test(subset(Suspension_Coil, Manufacturing_Lot == "Lot2")$PSI, mu=1500) 

t.test(subset(Suspension_Coil, Manufacturing_Lot == "Lot3")$PSI, mu=1500) 

