# World Happiness - Capstone Project

## PRESENTATION <br>

link to presentation (https://docs.google.com/presentation/d/1AZAHoBO62K7w25aLe06KhCUYCM8lwJU0Mf8bp9vBhC0/edit#slide=id.p)
link to dashboard


###### <i>S1 - SELECTED TOPIC</i>
Our selected topic is analyzing data from the World Happiness Report. We will specifically be comparing 2015 and 2016 and then use machine learning to make predictions about 2022. We believe it will be interesting to analyze this data using variables like region, economy, and life expectancy. 


###### <i>S1 - REASONS WHY THEY SELECTED THEIR TOPIC</i>
The reason why we selected this topic was to get a better understanding on the different regions in the world that people ranked that were the happiest and to see the factors that contributed to their rankings. Using that information, it would be interesting to predict for this current year, 2022, where in the world would people rank would be the happiest.



###### <i>S1 - DESCRIPTION OF THEIR SOURCE OF DATA</i>
We downloaded our dataset from Kaggle, originially from the World Happiness Report. 



###### <i>S1 - QUESTIONS THEY HOPE TO ANSWER WITH THE DATA</i>
1. What will be the top 5 regions in the world that will be ranked the happiest in 2022?
2. What is the average family income for the top 5 regions ranked the happiest?
3. What is the life-span of those who live in the regions ranked the 5 least happiest?



###### <i>S2 - DESCRIPTION OF THE DATA EXPLORATION PHASE OF THE PROJECT</i>
**Big Picture Question:** What region in the world will be the happiest place to live?

**Data Exploration Phase:** 

###### <i>S2 - DESCRIPTION OF THE ANALYSIS PHASE OF THE PROJECT</i><br>
**Analysis Phase:** 



###### <i>S3 - Technologies, languages, tools, and algorithms used throughout the project</i><br>

###### <i>S4 - Recommendation for future analysis. </i><br>

###### <i>S4 - Anything the team would have done differently.</i><br>


## GITHUB - README.md <br>

###### <i>S3 - Outline of the project (may include images, but should be easy to follow and digest).</i><br>


## GITHUB - CONTENT <br>
**File names:**
* 2015_machine_learning.ipynb
* world_happiness.sql
* world_happiness_join_tables.sql
* world_happiness_tables_15-19.sql
* SQL Database ERD.pdf




## MACHINE LEARNING MODEL <br>

 ###### <i>S1 - Description of preliminary data processing.</i><br>
Before we could start building our model, we had to clean our data. Using Jupyter Notebook, we read in each of our files (2015-2019) and removed unnecessary columns, and changed column names so that each year's columns would align. Next, for 2015 specifcally, we assigned a number (1-10) to each region. Lastly, we converted the column 'Happiness Score' from a range of 0-10 to 0 (low) and 1 (high). 

###### <i>S2 - Description of prelimnary feature engineering and prelimanry feature selection, including their decision-making process.</i><br>
After we had cleaned our data and created our SQL database in Postgres, we reuploaded our data using SQLAlchemy. Once that was complete, we started building our machine learning model using out 2015 dataset. 
For our features, we are using 'Happiness Score' as our Y value as that is the factor we are trying to predict. We would like to see how our other columns, including GDP, life expectancy, and family affect different region's happiness scores. 

 ![image](https://github.com/jbranaman/Capstone_Project/blob/main/Resources/Screen%20Shot%202022-05-25%20at%207.10.03%20PM.png)

###### <i>S3 - Description of how data was split into training and testing sets.</i><br>
We then split our data into training and testing data before we proceeded with our models:

![image](https://github.com/jbranaman/Capstone_Project/blob/main/Resources/Screen%20Shot%202022-05-27%20at%2011.05.53%20AM.png)

###### <i>S4 - Explanation of model choice, including limitations and benefits
**Models tested and their results:**
* Random Forest Classifier
  * Testing Accuracy Score: 83.3%
  * Training Accuracy Score: 98.6%
![image](https://github.com/jbranaman/Capstone_Project/blob/main/Resources/Screen%20Shot%202022-05-27%20at%2011.10.00%20AM.png)
* Easy Ensemble AdaBoost Classifier
  * Testing Accuracy Score: 81.2%
  * Training Accuracy Score: 97.1%
 ![image](https://github.com/jbranaman/Capstone_Project/blob/main/Resources/Screen%20Shot%202022-05-27%20at%2011.10.00%20AM.png)
* Random Oversampling
  * Testing Accuracy Score:87.5%
  * Training Accuracy Score: 87.8%
![image](https://github.com/jbranaman/Capstone_Project/blob/main/Resources/Screen%20Shot%202022-05-27%20at%2011.11.41%20AM.png)
* Undersampling
  * Testing Accuracy Score: 87.5%
  * Training Accuracy Score: 86.5%
![image](https://github.com/jbranaman/Capstone_Project/blob/main/Resources/Screen%20Shot%202022-05-27%20at%2011.12.31%20AM.png)
* Combination (Over and Under) Sampling
  * Testing Accuracy Score: 90.6% 
  * Training Accuracy Score: 84.6%
*![image](https://github.com/jbranaman/Capstone_Project/blob/main/Resources/Screen%20Shot%202022-05-27%20at%2011.12.31%20AM.png)

**Model choice:**
  * We are proceeding with the Combination (under & over) sampling model for the following reasons:
    * This model gave us our highest accuracy score, at 90.6%
    * This model does not appear to be overfit, with the training and testing accuracy scores being only 5% different and the testing accuracy score being  higher. We believe this model will be able to take in new data and perform well
  * When looking closer at the classification report, this model gave us our highest precision score (91%) and our highest f1 score (90%)
 
 * Limitations for this model:
   * While we are happy with the results of our model, one area of improvement would be in the precision score, specifically for '0', which is only at 83%. We would ideally like to improve that number, so the model gets better at predicting '0'. 
   * The largest limitation of our model is that it is currently only taking in our 2015 dataset. One further recomendation would be to also include our datasets from 2016-2019 and compare those results. 
 
 
## DATABASE <br>
###### <i>S2 - Database interfaces with the project in some format:</i>
Database connects to the model. <br>

###### <i>S2 - Includes at least one connection string:</i>
Connected to machine learning model using SQLAlchemy. <br>

###### <i>S2 - SQL Database ERD:</i>
See 'SQL Database ERD.pdf' file. <br>

![SQL Database ERD](https://user-images.githubusercontent.com/96451672/170295915-043176ca-1a30-4d0d-8a20-241413d302a1.png) <br>

###### <i>S2 - Includes at least two tables:</i>
See 'world_happiness_tables_15-19.sql' file. <br>

###### <i>S2 - Includes at least one join using the database language:</i>
See 'world_happiness_join_tables.sql' file. <br>

<img width="1206" alt="SQL Join Tables Query" src="https://user-images.githubusercontent.com/96451672/170297208-2a8d1308-43a7-4361-9197-79c95cde2dbe.png"> <br>

## DASHBOARD <br>



