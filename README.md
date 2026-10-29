# Student Performance EDA Using R

## Project Overview

This project performs **Exploratory Data Analysis (EDA)** on a Student Performance dataset using **R**.

The purpose of this project is to understand the dataset, analyze student participation and performance, identify outliers, study relationships between variables, and summarize important patterns using statistical techniques.

## Dataset

The dataset used in this project is taken from **Kaggle**.

It contains information related to student academic activity and performance, including:

- Gender
- Nationality
- Place of Birth
- Grade
- Topic
- Semester
- Raised Hands
- Visited Resources
- Announcements Viewed
- Discussion Participation
- Student Absence Days
- Performance Class

### Performance Class

The `Class` variable represents student performance:

- `H` = High
- `M` = Middle
- `L` = Low

## Objectives

The main objectives of this project are:

- To explore and understand the dataset
- To check for missing values
- To calculate descriptive statistics
- To study the distribution of numerical variables
- To identify possible outliers
- To study relationships between variables
- To analyze different student performance categories

## Methods Used

The following EDA techniques are used in this project:

- Dataset Inspection
- Missing Value Analysis
- Descriptive Statistics
- Mean
- Median
- Minimum
- Maximum
- Variance
- Standard Deviation
- Histograms
- Boxplots
- Outlier Detection
- Scatter Plots
- Correlation Analysis
- Bar Charts
- Performance Class Comparison

## Important R Functions Used

```r
read.csv()
head()
dim()
names()
str()
summary()

is.na()
colSums()

mean()
median()
min()
max()
var()
sd()

hist()
boxplot()
boxplot.stats()
plot()
cor()
table()
barplot()
```

## Project Files

```text
Student-Performance-EDA-R/
│
├── project1.R
├── Studentdata.csv
└── README.md
```

## Data Analysis

### 1. Dataset Inspection

The dataset is loaded and examined using:

```r
data <- read.csv("Studentdata.csv")

head(data)
dim(data)
names(data)
str(data)
summary(data)
```

## 2. Missing Value Analysis

Missing values are checked using:

```r
colSums(is.na(data))
```

## 3. Descriptive Statistics

Descriptive statistics are calculated for numerical variables such as:

- Raised Hands
- Visited Resources
- Announcements Viewed
- Discussion

The analysis includes:

- Mean
- Median
- Minimum
- Maximum
- Variance
- Standard Deviation

## 4. Distribution Analysis

Histograms are used to understand the distribution of numerical variables such as:

- Raised Hands
- Visited Resources

## 5. Outlier Analysis

Boxplots are used to identify possible outliers in numerical variables.

The project analyzes outliers in:

- Raised Hands
- Visited Resources

## 6. Relationship Analysis

Scatter plots are used to study relationships between numerical variables.

The project studies relationships such as:

- Raised Hands vs Visited Resources
- Discussion vs Raised Hands

Simple correlation analysis is also used to measure the relationship between selected numerical variables.

## 7. Student Performance Analysis

The `Class` variable is used to analyze student performance.

Students are divided into:

- High Performance
- Middle Performance
- Low Performance

Bar charts are used to compare the number of students in each performance category.

## 8. Performance Class Comparison

Boxplots are used to compare:

- Raised Hands across performance classes
- Visited Resources across performance classes

This helps in understanding how student participation and resource usage differ among High, Middle, and Low performing students.

## 9. Categorical Analysis

Categorical variables are also analyzed using frequency tables and bar charts.

The project includes analysis of:

- Gender Distribution
- Student Absence Distribution
- Semester Distribution

## Result

Exploratory Data Analysis was successfully performed on the Student Performance dataset using R.

The analysis helped in understanding:

- Student participation patterns
- Distribution of numerical variables
- Possible outliers
- Relationships between student activities
- Differences among High, Middle, and Low performing students
- Gender, semester, and absence distributions

## Technologies Used

- R
- RStudio
- CSV
- Kaggle
- GitHub

## How to Run

1. Download or clone this repository.
2. Open `project1.R` in RStudio.
3. Keep `Studentdata.csv` in the same project folder.
4. Run the R script.
5. View the statistical outputs in the Console.
6. View the graphs in the Plots section of RStudio.

## Author

**Ankita Sadhukhan**  
MCA Data Science  
Chandigarh University
