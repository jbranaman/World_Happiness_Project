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


###### <i>S1 - Takes in data from the provisional database.</i><br>
###### <i>S1 - Outputs label(s) for the input data. </i><br>
###### <i>S2 - Description of preliminary data processing.</i><br>
###### <i>S2 - Description of prelimnary feature engineering and prelimanry feature selection, including their decision-making process.</i><br>
###### <i>S2 - Description of how data was spllit into training and testing sets.</i><br>
###### <i>S2 - Explanation of model choice, including limitations and benefits. </i><br>
###### <i>S3 - Explanation of changes in model choice (if changes occurred between the Segment 2 and Segment 3 deliverables).</i><br>
###### <i>S3 - Description of how they have trained the model thus far, and any additional training that will take place.</i><br>
###### <i>S3 - Description of current accuracy score.</i><br>
###### <i>S4 - Description and explanation of model’s confusion matrix, including final accuracy score.</i><br>
 
 
Before we could start building our model, we had to clean our data. Using Jupyter Notebook, we read in each of our files (2015-2019) and removed unnecessary columns, and changed column names so that each year's columns would align. Next, we assigned a number (1-10) to each region. Lastly, we converted the column 'Happiness Score' from a range of 0-10 to 0 (low) and 1 (high). 
 ![image](https://github.com/jbranaman/Capstone_Project/blob/main/Resources/Screen%20Shot%202022-05-25%20at%207.10.03%20PM.png)

**Models tested:**
* Random Forest Classifier
* Easy Ensemble AdaBoost Classifier
* Random Oversampling

**Model results:**



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



