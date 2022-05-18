SELECT r.region, c.country, c.happiness_rank, c.happiness_score, c.economy_gdp_per_capita, c.family, c.health_life_expectancy, c.freedom, c.trust_government_corruption, c.generosity
FROM world_happiness_2015_with_country r
JOIN world_happiness_2017 c
ON r.country = c.country

CREATE TABLE world_happiness_2017_merged (
	 Region CHAR(40) NOT NULL,
     Happiness_Rank INT NOT NULL,
	 Happiness_Score NUMERIC NOT NULL,
	 Economy_GDP_per_Capita NUMERIC NOT NULL,
	 Family NUMERIC NOT NULL,
	 Health_Life_Expectancy NUMERIC NOT NULL,
	 Freedom NUMERIC NOT NULL,
	 Trust_Government_Corruption NUMERIC NOT NULL,
	 Generosity NUMERIC NOT NULL
);

SELECT r.region, c.country, c.happiness_rank, c.happiness_score, c.economy_gdp_per_capita, c.family, c.health_life_expectancy, c.freedom, c.trust_government_corruption, c.generosity
FROM world_happiness_2015_with_country r
JOIN world_happiness_2018 c
ON r.country = c.country

CREATE TABLE world_happiness_2018_merged (
	 Region CHAR(40) NOT NULL,
     Happiness_Rank INT NOT NULL,
	 Happiness_Score NUMERIC NOT NULL,
	 Economy_GDP_per_Capita NUMERIC NOT NULL,
	 Family NUMERIC NOT NULL,
	 Health_Life_Expectancy NUMERIC NOT NULL,
	 Freedom NUMERIC NOT NULL,
	 Trust_Government_Corruption NUMERIC,
	 Generosity NUMERIC NOT NULL
);

SELECT r.region, c.country, c.happiness_rank, c.happiness_score, c.economy_gdp_per_capita, c.family, c.health_life_expectancy, c.freedom, c.trust_government_corruption, c.generosity
FROM world_happiness_2015_with_country r
JOIN world_happiness_2019 c
ON r.country = c.country

CREATE TABLE world_happiness_2019_merged (
	 Region CHAR(40) NOT NULL,
     Happiness_Rank INT NOT NULL,
	 Happiness_Score NUMERIC NOT NULL,
	 Economy_GDP_per_Capita NUMERIC NOT NULL,
	 Family NUMERIC NOT NULL,
	 Health_Life_Expectancy NUMERIC NOT NULL,
	 Freedom NUMERIC NOT NULL,
	 Trust_Government_Corruption NUMERIC NOT NULL,
	 Generosity NUMERIC NOT NULL
);