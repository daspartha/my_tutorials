
library(tidyverse)
library(here)



# data

netflix <- read_csv(here('/cstep_tutorials/data', 'netflix-shows.zip'), col_types = 
                      cols(date_added = col_date(format = "%B %d, %Y")))

# 

netflix %>% 
  mutate(date_added = mdy(date_added),
         release_year = ymd(release_year))


parse_date("November 30, 2019", "%M %d %Y")
