# World Happiness - Capstone Project

# PRESENTATION <br>

For Google slides, click [here](https://docs.google.com/presentation/d/1AZAHoBO62K7w25aLe06KhCUYCM8lwJU0Mf8bp9vBhC0/edit#slide=id.p)<br>
For Tableau Dashboard, click [here](https://public.tableau.com/app/profile/madelyn.pineault/viz/WorldHappinessReport_16540413532210/WORLDHAPPINESS?publish=yes)


# Overview <br>
## Selected topic, Reason why, Questions to answers
Our selected topic is analyzing data from select years from the World Happiness Report. We selected this topic because we thought it would be interesting to know where in the world people are happiest and how this changes throughout time. Some questions we hoped to answers are what the overall happiest region is from years 2015-19 and what factors contribute to the happiest and least happiest regions in the world. With our machine learning model, we wanted to know what factor or factors contribute to the most happiest regions in the world. 

## Source of Data
The source of CSV data came from Kaggle which originally came from [The World Happiness Report](https://worldhappiness.report/). They've been conducting a global survey of over 150 countries for the past ten years. 

## Description of data exploration and analysis phase. 
We decided to use 2015 for for our machine learning model and use 2015-2019 for data analysis to see trends and show visualizations. 

###### <i>QUESTIONS THEY HOPE TO ANSWER WITH THE DATA</i>
1. From 2015 - 2019, what is the happiest region in the world?
2. What feature weighs the heaviest in the happiness score?
3. What feature is the least important to the happiness score?


###### <i> Technologies, languages, tools, and algorithms used throughout the project</i><br>
- Python
- Jupyter Notebook
- PostGres, PGAdmin
- Tableu
- SQLAlchemy

###### <i> Results of Analysis </i><br>
The results of our analysis showed that Australia and New Zealand were consistently the happiest region based on the 2015-2019 dataset.  We also found that GDP was the most important feature based off our machine learning model.  We also found that trust in government and freedom were the least important features to the happiness score. 

###### <i> Recommendation for future analysis. </i><br>
We recommended using additional years for the machine learning model. 

###### <i> Anything the team would have done differently.</i><br>
Given more, it would have been ideal to make an interactive website using FLASK. 

## GITHUB - README.md <br>


## GITHUB - CONTENT <br>
**File names:**
* 2015_machine_learning.ipynb
* world_happiness.sql
* world_happiness_join_tables.sql
* world_happiness_tables_15-19.sql
* SQL Database ERD.pdf




## MACHINE LEARNING MODEL <br>

 ###### <i> Description of preliminary data processing.</i><br>
Before we could start building our model, we had to clean our data. Using Jupyter Notebook, we read in each of our files (2015-2019) and removed unnecessary columns, and changed column names so that each year's columns would align. Next, for 2015 specifcally, we assigned a number (1-10) to each region. Lastly, we converted the column 'Happiness Score' from a range of 0-10 to 0 (low) and 1 (high). 
 ![image](https://github.com/jbranaman/Capstone_Project/blob/main/Resources/Screen%20Shot%202022-05-27%20at%2011.35.17%20AM.png)

###### <i>Description of prelimnary feature engineering and prelimanry feature selection, including their decision-making process.</i><br>
After we had cleaned our data and created our SQL database in Postgres, we reuploaded our data using SQLAlchemy. Once that was complete, we started building our machine learning model using out 2015 dataset. 
For our features, we are using 'Happiness Score' as our Y value as that is the factor we are trying to predict. We would like to see how our other columns, including GDP, life expectancy, and family affect different region's happiness scores. 

 ![image](https://github.com/jbranaman/Capstone_Project/blob/main/Resources/Screen%20Shot%202022-05-25%20at%207.10.03%20PM.png)

###### <i> Description of how data was split into training and testing sets.</i><br>
We then split our data into training and testing data before we proceeded with our models:

![image](https://github.com/jbranaman/Capstone_Project/blob/main/Resources/Screen%20Shot%202022-05-27%20at%2011.05.53%20AM.png)

###### <i> Explanation of model choice, including limitations and benefits</i>
**Models tested and their results:**
* Random Forest Classifier
  * Testing Accuracy Score: 83.3%
  * Training Accuracy Score: 98.6%
![image](https://github.com/jbranaman/Capstone_Project/blob/main/Resources/Screen%20Shot%202022-05-27%20at%2011.10.00%20AM.png)
* Easy Ensemble AdaBoost Classifier
  * Testing Accuracy Score: 81.2%
  * Training Accuracy Score: 97.1%
 ![image](https://github.com/jbranaman/Capstone_Project/blob/main/Resources/Screen%20Shot%202022-06-03%20at%201.35.59%20PM.png)
* Logistic Regression - Random Oversampling
  * Testing Accuracy Score:87.5%
  * Training Accuracy Score: 87.8%
![image](https://github.com/jbranaman/Capstone_Project/blob/main/Resources/Screen%20Shot%202022-05-27%20at%2011.11.41%20AM.png)
* Logistic Regression - Undersampling
  * Testing Accuracy Score: 87.5%
  * Training Accuracy Score: 86.5%
![image](https://github.com/jbranaman/Capstone_Project/blob/main/Resources/Screen%20Shot%202022-05-27%20at%2011.12.31%20AM.png)
* Logistic Regression - Combination (Over and Under) Sampling
  * Testing Accuracy Score: 90.6% 
  * Training Accuracy Score: 84.6%
  
![image](https://github.com/jbranaman/Capstone_Project/blob/main/Resources/Screen%20Shot%202022-06-06%20at%208.52.35%20PM.png)
![image](https://github.com/jbranaman/Capstone_Project/blob/main/Resources/Screen%20Shot%202022-06-08%20at%206.09.19%20PM.png)
**Model choice:**
  * We are proceeding with a logistic regression model, using the Combination (under & over) sampling for the following reasons:
    * We are using a logistic regression model because we are classifying regions as either 'Low' or 'High' 
    * This sampling technique gave us our highest accuracy score, at 90.6%
    * This model does not appear to be overfit, with the training and testing accuracy scores being only 5% different and the testing accuracy score being  higher. We believe this model will be able to take in new data and perform well
  * When looking closer at the classification report, this model gave us our highest precision score (91%) and our highest f1 score (90%)
 
 * Limitations for this model:
   * While we are happy with the results of our model, one area of improvement would be in the precision score, specifically for '0', which is only at 83%. We would ideally like to improve that number, so the model gets better at predicting '0'. 
   * The largest limitation of our model is that it is currently only taking in our 2015 dataset. One further recomendation would be to also include our datasets from 2016-2019 and compare those results. 
 
 **Testing our model with new data:**
  * Once we chose our model, we wanted to see how it would perform with a different dataset. This time, we chose the 2022 happiness dataset that was recently released. When we fed in the 2022 dataset into our model, we saw a lower accuracy score of 81%. Although the model performed less accurately, we are still comfortable with an 81% accuracy score. One thing that remained constant was GDP remained our heaviest weighed variable. 
 
## DATABASE <br>
###### <i>Database interfaces with the project in some format:</i>
Database connects to the model. <br>

###### <i>Includes at least one connection string:</i>
Connected to machine learning model using SQLAlchemy. <br>

###### <i>SQL Database ERD:</i>
See 'SQL Database ERD.pdf' file. <br>

![SQL Database ERD](https://user-images.githubusercontent.com/96451672/170295915-043176ca-1a30-4d0d-8a20-241413d302a1.png) <br>

###### <i>Includes at least two tables:</i>
See 'world_happiness_tables_15-19.sql' file. <br>

###### <i>Includes at least one join using the database language:</i>
See 'world_happiness_join_tables.sql' file. <br>

<img width="1206" alt="SQL Join Tables Query" src="https://user-images.githubusercontent.com/96451672/170297208-2a8d1308-43a7-4361-9197-79c95cde2dbe.png"> <br>

## DASHBOARD <br>

 <i> Our data will be displayed using Tableau Public, a free software that allows for a wide variety of Data Visualization options. </i>
 
 
 This [link]([https://public.tableau.com/app/profile/madelyn.pineault/viz/WorldHappinessReport_16540413532210/WORLDHAPPINESS?publish=yes](https://public.tableau.com/app/profile/madelyn.pineault/viz/WorldHappinessReport_16540413532210/WORLDHAPPINESS?publish=yes)) shows our visualization dashboard. 
 
 https://public.tableau.com/app/profile/madelyn.pineault/viz/WorldHappinessReport_16540413532210/WORLDHAPPINESS?publish=yes
 

 <i> Our dashboard contains visualizations using data from Kaggle's 2015-2019 World Happiness Report dataset. We chose to visualize data from the Happiness Score, Happiness Rank, Trust, Freedom, and GDP columns of the data sets. These data are consistent over time, and can be used to show trends in Happiness. 
 
##### Happiness Score
Happiness Score is collected by asking participants to rank their happiness on a scale from 1-10. 
 
![hap_score_img](https://github.com/jbranaman/Capstone_Project/blob/main/Tableau%20Visualizations/HappinessScore.png)
 
##### Happiness Rank
Happiness Rank is the rank assigned to each nation (here, grouped into Regions) after the Happiness Score data is collected.
 
![hap_rank_img](https://github.com/jbranaman/Capstone_Project/blob/main/Tableau%20Visualizations/HappinessRank.png)
 
##### Trust
 
![trust_img](https://github.com/jbranaman/Capstone_Project/blob/main/Tableau%20Visualizations/TrustGovernment.png)
 
 
##### Freedom                        
 
![free_img](https://github.com/jbranaman/Capstone_Project/blob/main/Tableau%20Visualizations/FreedomPerception.png)

##### GDP per Capita

 ![gdp_img](https://github.com/jbranaman/Capstone_Project/blob/main/Tableau%20Visualizations/EconomicOutputGDP.png)
