CREATE TABLE world_happiness (
     Region INT NOT NULL,
     Happiness_Rank INT NOT NULL,
	 Happiness_Score NUMERIC NOT NULL,
	 Economy_GDP_per_Capita NUMERIC NOT NULL,
	 Family NUMERIC NOT NULL,
	 Health_Life_Expectancy NUMERIC NOT NULL,
	 Freedom NUMERIC NOT NULL,
	 Trust_Government_Corruption NUMERIC NOT NULL,
	 Generosity NUMERIC NOT NULL
);
SELECT * FROM world_happiness;