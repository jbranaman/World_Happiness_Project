-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/GS6sMG
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "World_Happiness_2015" (
    "Region" char   NOT NULL,
    "Happiness_Rank" int   NOT NULL,
    "Happiness_Score" num   NOT NULL,
    "Economy_GDP_per_Capita" num   NOT NULL,
    "Family" num   NOT NULL,
    "Health_Life_Expectancy" num   NOT NULL,
    "Freedom" num   NOT NULL,
    "Trust_Government_Corruption" num   NOT NULL,
    "Generosity" num   NOT NULL,
    CONSTRAINT "pk_World_Happiness_2015" PRIMARY KEY (
        "Region"
     )
);

CREATE TABLE "World_Happiness_ML" (
    "Region" int   NOT NULL,
    "Happiness_Rank" int   NOT NULL,
    "Happiness_Score" num   NOT NULL,
    "Economy_GDP_per_Capita" num   NOT NULL,
    "Family" num   NOT NULL,
    "Health_Life_Expectancy" num   NOT NULL,
    "Freedom" num   NOT NULL,
    "Trust_Government_Corruption" num   NOT NULL,
    "Generosity" num   NOT NULL
);

CREATE TABLE "World_Happiness_2016" (
    "Region" char   NOT NULL,
    "Happiness_Rank" int   NOT NULL,
    "Happiness_Score" num   NOT NULL,
    "Economy_GDP_per_Capita" num   NOT NULL,
    "Family" num   NOT NULL,
    "Health_Life_Expectancy" num   NOT NULL,
    "Freedom" num   NOT NULL,
    "Trust_Government_Corruption" num   NOT NULL,
    "Generosity" num   NOT NULL
);

CREATE TABLE "World_Happiness_2017" (
    "Region" char   NOT NULL,
    "Happiness_Rank" int   NOT NULL,
    "Happiness_Score" num   NOT NULL,
    "Economy_GDP_per_Capita" num   NOT NULL,
    "Family" num   NOT NULL,
    "Health_Life_Expectancy" num   NOT NULL,
    "Freedom" num   NOT NULL,
    "Trust_Government_Corruption" num   NOT NULL,
    "Generosity" num   NOT NULL
);

CREATE TABLE "World_Happiness_2018" (
    "Region" char   NOT NULL,
    "Happiness_Rank" int   NOT NULL,
    "Happiness_Score" num   NOT NULL,
    "Economy_GDP_per_Capita" num   NOT NULL,
    "Family" num   NOT NULL,
    "Health_Life_Expectancy" num   NOT NULL,
    "Freedom" num   NOT NULL,
    "Trust_Government_Corruption" num   NOT NULL,
    "Generosity" num   NOT NULL
);

CREATE TABLE "World_Happiness_2019" (
    "Region" char   NOT NULL,
    "Happiness_Rank" int   NOT NULL,
    "Happiness_Score" num   NOT NULL,
    "Economy_GDP_per_Capita" num   NOT NULL,
    "Family" num   NOT NULL,
    "Health_Life_Expectancy" num   NOT NULL,
    "Freedom" num   NOT NULL,
    "Trust_Government_Corruption" num   NOT NULL,
    "Generosity" num   NOT NULL
);

ALTER TABLE "World_Happiness_ML" ADD CONSTRAINT "fk_World_Happiness_ML_Region" FOREIGN KEY("Region")
REFERENCES "World_Happiness_2015" ("Region");

ALTER TABLE "World_Happiness_2016" ADD CONSTRAINT "fk_World_Happiness_2016_Region" FOREIGN KEY("Region")
REFERENCES "World_Happiness_2015" ("Region");

ALTER TABLE "World_Happiness_2017" ADD CONSTRAINT "fk_World_Happiness_2017_Region" FOREIGN KEY("Region")
REFERENCES "World_Happiness_2015" ("Region");

ALTER TABLE "World_Happiness_2018" ADD CONSTRAINT "fk_World_Happiness_2018_Region" FOREIGN KEY("Region")
REFERENCES "World_Happiness_2015" ("Region");

ALTER TABLE "World_Happiness_2019" ADD CONSTRAINT "fk_World_Happiness_2019_Region" FOREIGN KEY("Region")
REFERENCES "World_Happiness_2015" ("Region");

