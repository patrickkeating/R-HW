# R-HW
#which has data from the 2012 5-year America Community Survey (ACS)
?df_pop_state
#which has data from the 2013 5-year ACS 
?df_state_demographics, 

#KEy from Census
library(acs)
​api.key.install(<your api key>) 

#data from other surveys
?get_state_demographics 

##get data from the 2010 5-year ACS
library(choroplethr)
?get_state_demographics
df_2010_demographics = get_state_demographics(2010)

#Creating a map of 2010 population 
df_2010_demographics$value = df_2010_demographics$total_population
state_choropleth(df_2010_demographics, 
                 title  = “2010 State Population Estimates”,
                 legend = “Population”)
                 
                 

#Get the data with the function 
##which works analogously to get_state_demographics
?get_county_demographics

df_2011_demographics = get_county_demographics(2011)
df_2011_demographics$value = df_2011_demographics$percent_hispanic

county_choropleth(df_2011_demographics,
                  title      = "Texas 2011 County\nPercent Hispanic",
                  legend     = "Percent Hispanic",
                  state_zoom = "texas")
                  
                  
##Homework: Use the function ?get_zip_demographics to make a map of some demographic 
##in San Francisco County (FIPS code 6075) in 2011. 
##get_zip_demographics is in the package choroplethrZip. 
