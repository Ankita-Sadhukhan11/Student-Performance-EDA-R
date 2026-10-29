# Student Performance Exploratory Data Analysis Using R

## Project Overview

This project performs Exploratory Data Analysis (EDA) on a Student Performance dataset using R.

The main objective is to understand the dataset, analyze numerical and categorical variables, identify possible outliers, study the distribution of variables, and visualize relationships between different student activity variables.

## Dataset

Dataset file:

`Studentdata.csv`

The dataset contains information about student academic activities and performance.

Some important variables used in this project are:

- `gender`
- `NationalITy`
- `PlaceofBirth`
- `StageID`
- `GradeID`
- `SectionID`
- `Topic`
- `Semester`
- `Relation`
- `raisedhands`
- `VisITedResources`
- `AnnouncementsView`
- `Discussion`
- `StudentAbsenceDays`
- `Class`

The `Class` variable represents student performance:

- `H` = High
- `M` = Middle
- `L` = Low

## Software Used

- R
- RStudio

## Project Files

```text
Student_Performance_R_Project
│
├── project1.R
├── Studentdata.csv
└── README.md
```

## Methods Used

The following Exploratory Data Analysis techniques are used in this project:

### 1. Dataset Inspection

Functions used:

```r
head()
dim()
names()
str()
summary()
```

These functions are used to understand the size, structure, variables, and summary of the dataset.

### 2. Missing Value Detection

```r
colSums(is.na(data))
```

This is used to check whether the dataset contains missing values.

### 3. Descriptive Statistics

The following statistical measures are calculated:

- Mean
- Median
- Minimum
- Maximum
- Variance
- Standard deviation

Functions used:

```r
mean()
median()
min()
max()
var()
sd()
```

These are applied mainly to:

- Raised hands
- Visited resources
- Announcement views
- Discussion participation

### 4. Distribution Analysis

Histograms are used to study the distribution of numerical variables.

```r
hist()
```

Examples include:

- Distribution of Raised Hands
- Distribution of Visited Resources
- Distribution of Discussion

### 5. Outlier Detection

Boxplots are used to identify possible outliers.

```r
boxplot()
boxplot.stats()
```

Outliers are examined for variables such as:

- Raised Hands
- Visited Resources
- Discussion

### 6. Relationship Visualization

Scatter plots are used to visually study relationships between numerical variables.

```r
plot()
```

Examples:

- Raised Hands vs Visited Resources
- Discussion vs Raised Hands
- Announcements View vs Visited Resources

### 7. Categorical Analysis

Frequency tables are created using:

```r
table()
```

Categorical variables analyzed include:

- Performance Class
- Gender
- Student Absence Days
- Semester

### 8. Bar Charts

Bar charts are used to visualize categorical variables.

```r
barplot()
```

Examples include:

- Student Performance Classes
- Gender Distribution
- Student Absence Distribution
- Semester Distribution

### 9. Group Comparison

Boxplots are also used to compare student activity according to performance class.

Examples:

```r
raisedhands ~ Class
```

and

```r
VisITedResources ~ Class
```

This helps compare classroom participation and resource usage among High, Middle, and Low performing students.

## Main Objectives

The project aims to:

- Understand the structure of the student dataset.
- Calculate basic descriptive statistics.
- Study the distribution of numerical variables.
- Detect possible outliers.
- Visualize relationships between variables.
- Analyze student performance categories.
- Compare student activities across performance groups.

## Result

The project successfully performs Exploratory Data Analysis on the Student Performance dataset using R.

Different statistical functions and graphical techniques such as histograms, boxplots, scatter plots, and bar charts are used to understand student behavior and academic performance.

## Conclusion

Exploratory Data Analysis helps in understanding the important characteristics of a dataset before performing advanced statistical or machine learning analysis.

This project demonstrates how R can be used to summarize, visualize, and analyze student performance data in a simple and effective way.

## Author

**Ankita Sadhukhan**  
MCA Data Science  
Chandigarh University  
Section: 26MCD_1A  
UID: 26MCD10004
