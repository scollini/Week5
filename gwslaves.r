# I used George Washington's 1799 slave census from Mount Vernon
# for my dataset. 
slavesgw <- read.csv("~/Desktop/MountVernon/Spreadsheets/slavesgw.csv",
                     stringsAsFactors = FALSE)
library("ggplot2")
library(dplyr)
# This chart shows how many slaves were born each year.
ggplot(data = slavesgw, aes(x = Birth.Year)) + geom_bar()
# This chart show the number of slaves on each farm and shows the five
# main farms in 1799.
ggplot(data = slavesgw, aes(x = Farm)) + geom_bar() + theme(axis.text.x=element_text(angle = 90, hjust = 0))
# This chart shows the gender ratio for the farms in 1799. More males worked
# at Mansion House farm than females, but more females worked at every other main farm. You can make an 
# argument about gender roles and the plantation hierarchy from this plot. Mansion House offered the jobs that required
# special skills, like carpentry, and more males held those jobs than females.
ggplot(data = slavesgw, aes(x = Farm)) + geom_bar() + facet_wrap(~ Gender + Census) + theme(axis.text.x=element_text(angle = 90, hjust = 0))
# This chart shows the gender ratio for each occupation. More females worked in the 
# fields than males. Farm work was low on the plantation hierarchy, so you can argue
# that male slaves had higher status than female slaves on Mount Vernon.
ggplot(data = slavesgw, aes(x = Skill )) + geom_bar() + facet_wrap(~ Gender) + theme(axis.text.x=element_text(angle = 90, hjust = 0))
# This chart shows the different slave occupations on each farm. Mansion House farm
# included almost all of the skilled workers, because it was the main industrial hub.
ggplot(data = slavesgw, aes(x = Skill)) + geom_bar() + facet_wrap(~ Farm) + theme(axis.text.x=element_text(angle = 90, hjust = 0))
# This chart shows the distribution of slaves on each farm based on their owner. You can
# see that French's slaves mostly resided on Union Farm. Her farm evolved into 
# Union Farm before this census. 
ggplot(data = slavesgw, aes(x = Farm)) + geom_bar() + facet_grid(~ Owner + Census) + theme(axis.text.x=element_text(angle = 90, hjust = 0))
# The following plots show the different skills at each of the five main farms.
slavesgw %>%
  filter(Farm == "Mansion House") %>% 
  ggplot(aes(x = Skill)) + geom_bar() + facet_wrap(~ Farm) + theme(axis.text.x=element_text(angle = 90, hjust = 0))

slavesgw %>%
  filter(Farm == "Dogue Run") %>% 
  ggplot(aes(x = Skill)) + geom_bar() + facet_wrap(~ Farm) + theme(axis.text.x=element_text(angle = 90, hjust = 0))

slavesgw %>%
  filter(Farm == "Union Farm") %>% 
  ggplot(aes(x = Skill)) + geom_bar() + facet_wrap(~ Farm) + theme(axis.text.x=element_text(angle = 90, hjust = 0))

slavesgw %>%
  filter(Farm == "River Farm") %>% 
  ggplot(aes(x = Skill)) + geom_bar() + facet_wrap(~ Farm) + theme(axis.text.x=element_text(angle = 90, hjust = 0))

slavesgw %>%
  filter(Farm == "Muddy Hole") %>% 
  ggplot(aes(x = Skill)) + geom_bar() + facet_wrap(~ Farm) + theme(axis.text.x=element_text(angle = 90, hjust = 0))











