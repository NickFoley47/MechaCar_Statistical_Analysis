# Import librarys
library(tidyverse)
library(dplyr)

# Deliverable 1: Linear Regression to Predict MPG
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)#Import CSV
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data =  MechaCar_mpg)#create linear model 
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data =  MechaCar_mpg)) #summarize linear model

# Deliverable 2: Create Visualizations for the Trip Analysis 
Coil_Data <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)#Import CSV
total_summary <- Coil_Data%>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep') #create summary table for PSI
lot_summary <- Coil_Data %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep') #create summar for lot

# Deliverable 3: T-Tests on Suspension Coils
t.test(Coil_Data$PSI, mu = 1500 ) # t-test that compares all manufacturing lots against mean PSI of the population


Lot_1_Info <- Coil_Data %>% filter(Manufacturing_Lot == "Lot1") #table for lot 1
t.test(Lot_1_Info$PSI, mu = 1500) #t.test for lot 1

Lot_2_Info <- Coil_Data %>% filter(Manufacturing_Lot == "Lot2") #table for lot 2
t.test(Lot_2_Info$PSI, mu = 1500) #t.test for lot 2

Lot_3_Info <- Coil_Data %>% filter(Manufacturing_Lot == "Lot3") #table for lot 3
t.test(Lot_3_Info$PSI, mu = 1500) #t.test for lot 3
