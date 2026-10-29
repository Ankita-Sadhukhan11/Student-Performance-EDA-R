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


# ---------------------------------------------------------
# 10. HISTOGRAM - DISCUSSION
# ---------------------------------------------------------

hist(
  data$Discussion,
  main = "Distribution of Discussion",
  xlab = "Discussion",
  ylab = "Number of Students"
)


# =========================================================
# OUTLIER ANALYSIS
# =========================================================


# ---------------------------------------------------------
# 11. BOXPLOT - RAISED HANDS
# ---------------------------------------------------------

boxplot(
  data$raisedhands,
  main = "Boxplot of Raised Hands",
  ylab = "Raised Hands"
)

# Display outlier values
boxplot.stats(data$raisedhands)$out


# ---------------------------------------------------------
# 12. BOXPLOT - VISITED RESOURCES
# ---------------------------------------------------------

boxplot(
  data$VisITedResources,
  main = "Boxplot of Visited Resources",
  ylab = "Visited Resources"
)

# Display outlier values
boxplot.stats(data$VisITedResources)$out


# ---------------------------------------------------------
# 13. BOXPLOT - DISCUSSION
# ---------------------------------------------------------

boxplot(
  data$Discussion,
  main = "Boxplot of Discussion",
  ylab = "Discussion"
)

# Display outlier values
boxplot.stats(data$Discussion)$out


# =========================================================
# RELATIONSHIP BETWEEN VARIABLES
# =========================================================


# ---------------------------------------------------------
# 14. SCATTER PLOT
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
# 15. SCATTER PLOT
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
# 16. SCATTER PLOT
# ANNOUNCEMENTS VIEW VS VISITED RESOURCES
# ---------------------------------------------------------

plot(
  data$AnnouncementsView,
  data$VisITedResources,
  main = "Announcements View vs Visited Resources",
  xlab = "Announcements View",
  ylab = "Visited Resources",
  pch = 19
)


# =========================================================
# PERFORMANCE CLASS ANALYSIS
# =========================================================


# ---------------------------------------------------------
# 17. COUNT STUDENTS BY PERFORMANCE CLASS
# ---------------------------------------------------------

table(data$Class)


# ---------------------------------------------------------
# 18. BAR CHART - PERFORMANCE CLASS
# ---------------------------------------------------------

barplot(
  table(data$Class),
  main = "Student Performance Classes",
  xlab = "Performance Class",
  ylab = "Number of Students"
)


# ---------------------------------------------------------
# 19. RAISED HANDS BY PERFORMANCE CLASS
# ---------------------------------------------------------

boxplot(
  raisedhands ~ Class,
  data = data,
  main = "Raised Hands by Performance Class",
  xlab = "Performance Class",
  ylab = "Raised Hands"
)


# ---------------------------------------------------------
# 20. VISITED RESOURCES BY PERFORMANCE CLASS
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
# 21. GENDER DISTRIBUTION
# ---------------------------------------------------------

table(data$gender)

barplot(
  table(data$gender),
  main = "Gender Distribution",
  xlab = "Gender",
  ylab = "Number of Students"
)


# ---------------------------------------------------------
# 22. STUDENT ABSENCE DISTRIBUTION
# ---------------------------------------------------------

table(data$StudentAbsenceDays)

barplot(
  table(data$StudentAbsenceDays),
  main = "Student Absence Distribution",
  xlab = "Absence Category",
  ylab = "Number of Students"
)


# ---------------------------------------------------------
# 23. SEMESTER DISTRIBUTION
# ---------------------------------------------------------

table(data$Semester)

barplot(
  table(data$Semester),
  main = "Semester Distribution",
  xlab = "Semester",
  ylab = "Number of Students"
)


# ---------------------------------------------------------
# 24. FINAL MESSAGE
# ---------------------------------------------------------

cat("\nExploratory Data Analysis completed successfully!\n")