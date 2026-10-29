# =========================================================
# PROJECT 1
# EXPLORATORY DATA ANALYSIS USING R
# STUDENT PERFORMANCE DATASET
# =========================================================


# ---------------------------------------------------------
# 1. LOAD DATASET
# ---------------------------------------------------------

data <- read.csv("Studentdata.csv")

print(data)


# ---------------------------------------------------------
# 2. BASIC INFORMATION ABOUT DATASET
# ---------------------------------------------------------

# First 6 rows
head(data)

# Number of rows and columns
dim(data)

# Column names
names(data)

# Structure of dataset
str(data)

# Summary of dataset
summary(data)


# ---------------------------------------------------------
# 3. CHECK MISSING VALUES
# ---------------------------------------------------------

colSums(is.na(data))


# =========================================================
# DESCRIPTIVE STATISTICS
# =========================================================


# ---------------------------------------------------------
# 4. RAISED HANDS
# ---------------------------------------------------------

mean(data$raisedhands)

median(data$raisedhands)

min(data$raisedhands)

max(data$raisedhands)

var(data$raisedhands)

sd(data$raisedhands)


# ---------------------------------------------------------
# 5. VISITED RESOURCES
# ---------------------------------------------------------

mean(data$VisITedResources)

median(data$VisITedResources)

min(data$VisITedResources)

max(data$VisITedResources)

var(data$VisITedResources)

sd(data$VisITedResources)


# ---------------------------------------------------------
# 6. ANNOUNCEMENTS VIEW
# ---------------------------------------------------------

mean(data$AnnouncementsView)

median(data$AnnouncementsView)

min(data$AnnouncementsView)

max(data$AnnouncementsView)

var(data$AnnouncementsView)

sd(data$AnnouncementsView)


# ---------------------------------------------------------
# 7. DISCUSSION
# ---------------------------------------------------------

mean(data$Discussion)

median(data$Discussion)

min(data$Discussion)

max(data$Discussion)

var(data$Discussion)

sd(data$Discussion)


# =========================================================
# DISTRIBUTION ANALYSIS
# =========================================================


# ---------------------------------------------------------
# 8. HISTOGRAM - RAISED HANDS
# ---------------------------------------------------------

hist(
  data$raisedhands,
  main = "Distribution of Raised Hands",
  xlab = "Raised Hands",
  ylab = "Number of Students"
)


# ---------------------------------------------------------
# 9. HISTOGRAM - VISITED RESOURCES
# ---------------------------------------------------------

hist(
  data$VisITedResources,
  main = "Distribution of Visited Resources",
  xlab = "Visited Resources",
  ylab = "Number of Students"
)


# =========================================================
# OUTLIER ANALYSIS
# =========================================================


# ---------------------------------------------------------
# 10. BOXPLOT - RAISED HANDS
# ---------------------------------------------------------

boxplot(
  data$raisedhands,
  main = "Boxplot of Raised Hands",
  ylab = "Raised Hands"
)

# Display outlier values
boxplot.stats(data$raisedhands)$out


# ---------------------------------------------------------
# 11. BOXPLOT - VISITED RESOURCES
# ---------------------------------------------------------

boxplot(
  data$VisITedResources,
  main = "Boxplot of Visited Resources",
  ylab = "Visited Resources"
)

# Display outlier values
boxplot.stats(data$VisITedResources)$out


# =========================================================
# RELATIONSHIP BETWEEN VARIABLES
# =========================================================


# ---------------------------------------------------------
# 12. SCATTER PLOT
# RAISED HANDS VS VISITED RESOURCES
# ---------------------------------------------------------

plot(
  data$raisedhands,
  data$VisITedResources,
  main = "Raised Hands vs Visited Resources",
  xlab = "Raised Hands",
  ylab = "Visited Resources",
  pch = 19
)


# ---------------------------------------------------------
# 13. CORRELATION
# RAISED HANDS VS VISITED RESOURCES
# ---------------------------------------------------------

cor(
  data$raisedhands,
  data$VisITedResources
)


# ---------------------------------------------------------
# 14. SCATTER PLOT
# DISCUSSION VS RAISED HANDS
# ---------------------------------------------------------

plot(
  data$Discussion,
  data$raisedhands,
  main = "Discussion vs Raised Hands",
  xlab = "Discussion",
  ylab = "Raised Hands",
  pch = 19
)


# ---------------------------------------------------------
# 15. CORRELATION
# DISCUSSION VS RAISED HANDS
# ---------------------------------------------------------

cor(
  data$Discussion,
  data$raisedhands
)


# =========================================================
# PERFORMANCE CLASS ANALYSIS
# =========================================================


# ---------------------------------------------------------
# 16. COUNT STUDENTS BY CLASS
# ---------------------------------------------------------

table(data$Class)


# ---------------------------------------------------------
# 17. BAR CHART - PERFORMANCE CLASS
# ---------------------------------------------------------

barplot(
  table(data$Class),
  main = "Student Performance Classes",
  xlab = "Performance Class",
  ylab = "Number of Students"
)


# ---------------------------------------------------------
# 18. RAISED HANDS BY CLASS
# ---------------------------------------------------------

boxplot(
  raisedhands ~ Class,
  data = data,
  main = "Raised Hands by Performance Class",
  xlab = "Performance Class",
  ylab = "Raised Hands"
)


# ---------------------------------------------------------
# 19. VISITED RESOURCES BY CLASS
# ---------------------------------------------------------

boxplot(
  VisITedResources ~ Class,
  data = data,
  main = "Visited Resources by Performance Class",
  xlab = "Performance Class",
  ylab = "Visited Resources"
)


# =========================================================
# CATEGORY ANALYSIS
# =========================================================


# ---------------------------------------------------------
# 20. GENDER DISTRIBUTION
# ---------------------------------------------------------

table(data$gender)

barplot(
  table(data$gender),
  main = "Gender Distribution",
  xlab = "Gender",
  ylab = "Number of Students"
)


# ---------------------------------------------------------
# 21. STUDENT ABSENCE DISTRIBUTION
# ---------------------------------------------------------

table(data$StudentAbsenceDays)

barplot(
  table(data$StudentAbsenceDays),
  main = "Student Absence Distribution",
  xlab = "Absence Category",
  ylab = "Number of Students"
)


# ---------------------------------------------------------
# 22. FINAL MESSAGE
# ---------------------------------------------------------

cat(
  "\nExploratory Data Analysis completed successfully.\n"
)