# Best Places for Outdoor Enthusiasts
 
![alt text](https://github.com/gracemshea/ga_da_finalproject/blob/master/imagefiles/outdoors1.jpeg)"Outdoors Image 1"

# *“Keep close to Nature’s heart… and break clear away, once in a while, and climb a mountain or spend a week in the woods. Wash your spirit clean.” –John Muir*

## Introduction 
This project, which performs a ranking of the best American cities for outdoors enthusiasts, showcases my SQL skills using a combination of [data sources](https://github.com/gracemshea/ga_da_finalproject/blob/master/datasources.md). These files consist of Zillow's Home Value Index, U.S. city population estimates, NOAA's registered recreational fishing catches for 2017, as well as the locations of city bike lanes, campgrounds, climbing routes, and ski resorts across the United States.

From data collection to the final product, I utilized Excel to explore, clean and format the raw data, SQL to load, organize and transform it within Postgres, and Tableau to analyze the data and enable user input for an individualized final ranking of locations. 

 
![alt text](https://github.com/gracemshea/ga_da_finalproject/blob/master/imagefiles/outdoors2.jpeg) "Outdoors Image 2"

## Excel: Data Exploration & Cleaning Process, Pivot Tables & VLOOKUP

### Data Exploration Process
When making sense of potential data sources, Pivot Tables proved enormously useful in understanding the data quickly.

#### Pivot Tables

+ Example 1: When exploring the directory of ski resorts, which I'd narrowed down to the US only, I was interested in how altitude filtered the states apart. By creating a quick pivot table, I was able to select the altitude values of 3000+ and see which states had resorts (and how many) within that range of altitudes. See pivot table [here](https://github.com/gracemshea/ga_da_finalproject/blob/master/datafiles/Data%20Exploration%20Pivot%20Table%201.xls).

+ Example 2: The Zillow Home Value Index (ZHVI) is an important piece of data in understanding home values across a state, or county. I wanted to see, based on Zillow's data from 2018, which state's average ZHVI values were highest. See pivot table [here](https://github.com/gracemshea/ga_da_finalproject/blob/master/datafiles/Data%20Exploration%20Pivot%20Table%202.xls).

### Data Cleaning Process

When cleaning the datasets, I eliminated columns of data unnecessary to my project. For example, in the fish catch dataset, there were many columns that were not important to my question; Where were people catching fish recreationally in the U.S. and what were the catch totals? However, not all data cleaning comes from **elimination**, but rather **adding** columns to make the data easier to understand.

#### VLOOKUP

 + Example 1: The fishing data referred to the US states by numbers, using the FIPS (Federal Information Processing Standard) state codes. I added a second tab with these codes and used a VLOOKUP function to fill in the state names into the dataset. See [here](https://github.com/gracemshea/ga_da_finalproject/blob/master/datafiles/Data%20Cleaning%20VLOOKUP%201.xls).
 
 + Example 2: The camping data referred to the campsite type with a code. I found these codes on the main campground info website, and created a second tab in Excel with the codes and corresponding meanings. By using VLOOKUP, I integrated the campground types into the dataset. See [here](https://github.com/gracemshea/ga_da_finalproject/blob/master/datafiles/Data%20Cleaning%20VLOOKUP%202.xls).
 
 #### Index & Match

+ TBD
 
 ![alt text](https://github.com/gracemshea/ga_da_finalproject/blob/master/imagefiles/outdoors4.jpeg) "Outdoors Image 3"
 

## SQL: Data Loading & Command Examples

TBD

 ![alt text](https://github.com/gracemshea/ga_da_finalproject/blob/master/imagefiles/outdoors6.jpg) "Outdoors Image 4"

## Tableau: Key Features & Visualization

TBD

### This concludes my project. I appreciate any suggestions to further improve. 


# *“Afoot and lighthearted I take to the open road, healthy, free, the world before me.” –Walt Whitman*

![alt text](https://github.com/gracemshea/ga_da_finalproject/blob/master/imagefiles/outdoors7.jpeg) "Outdoors Image 5"
