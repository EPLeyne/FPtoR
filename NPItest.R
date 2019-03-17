# Scripts for creating wide file from long from FP

library(tidyverse)

# Create the name set of the  columns to be dropped
col_drop <- c("fpScoreSetID","fpNodeId","sampleNum","ScoreSetCreationDate","Trait", "Time", "Row", "Column")

# Script for transferring from long to wide, keeping only establishment trait (NPI data)
NPI_Establishment <- NPItest %>% separate("Time", c("Date","Time"), sep = " ") %>%  #separate time metadata into date and time
  filter(Trait == "Establishment") %>% # Filter all traits except 'Establishment'
  select(-(col_drop)) %>%  # Drop all columns from the col_drop 
  spread(key = "Date", value = "Value") #%>% #Spread the data from long to wide by the 'Date'

View(NPI_Establishment)

# Script for transferring from long to wide, keeping only heading trait (NPI data)
NPI_Heading <- NPItest %>% separate("Time", c("Date","Time"), sep = " ") %>% 
  filter(Trait == "Heading_number") %>% 
  select(-(col_drop)) %>%
  spread(key = "Date", value = "Value") #%>% 

View(NPI_Heading)


# Script for transferring from long to wide, keeping only anthesis trait (NPI data)
NPI_Anthesis <- NPItest %>% separate("Time", c("Date","Time"), sep = " ") %>% 
  filter(Trait == "Anthesis_number") %>% 
  select(-(col_drop)) %>%
  spread(key = "Date", value = "Value") #%>% 

View(NPI_Anthesis)
