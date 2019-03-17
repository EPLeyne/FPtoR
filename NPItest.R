library(tidyverse)

col_drop <- c("fpScoreSetID","fpNodeId","sampleNum","ScoreSetCreationDate","Trait", "Time", "Row", "Column")


NPI_Establishment <- NPItest %>% separate("Time", c("Date","Time"), sep = " ") %>% 
  filter(Trait == "Establishment") %>% 
  select(-(col_drop)) %>%
  spread(key = "Date", value = "Value") #%>% 

View(NPI_Establishment)


NPI_Heading <- NPItest %>% separate("Time", c("Date","Time"), sep = " ") %>% 
  filter(Trait == "Heading_number") %>% 
  select(-(col_drop)) %>%
  spread(key = "Date", value = "Value") #%>% 

View(NPI_Heading)



NPI_Anthesis <- NPItest %>% separate("Time", c("Date","Time"), sep = " ") %>% 
  filter(Trait == "Anthesis_number") %>% 
  select(-(col_drop)) %>%
  spread(key = "Date", value = "Value") #%>% 

View(NPI_Anthesis)