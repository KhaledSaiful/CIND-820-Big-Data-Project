Load the Data:
  Make sure your dataset is loaded. You've already done this with the read.csv function.
```{r}
# Set the working directory to the folder containing your .csv file
setwd("/Users/khaledsaifullah/Documents/Education/Big Data_Khaled/CIND 820/My BigData_Project/Data set")
# Replace 'your_file.csv' with the actual name of your .csv file
data <- read.csv("online_shoppers_intention.csv")
```


```{r}
head(data)
```


```{r}
tail(data)
```

```{r}
# Assuming 'data' is the name of your data frame
str(data)
```

```{r}
2. Convert 'Month' to Categorical:Here, I want to convert the 'Month' column 
to a categorical variable with 10 different levels.

# Check unique values in 'Month'
unique(data$Month)

# Convert 'Month' to a factor with custom levels
data$Month <- factor(data$Month, levels = c("Jan", "Feb", "Mar", "Apr", "May",
                                            "June", "Jul", "Aug", "Sep", "Oct"))

#3. Convert 'OperatingSystem' to Categorical:
#Assuming 'OperatingSystem' has 8 distinct values.

# Convert 'OperatingSystem' to a factor with custom levels
data$OperatingSystem <- factor(data$OperatingSystem, levels = 1:8)

#4. Convert 'Browser' to Categorical: Assuming 'Browser' has 13 distinct values.
# Convert 'Browser' to a factor with custom levels
data$Browser <- factor(data$Browser, levels = 1:13)

#5. Convert 'Region' to Categorical: Assuming 'Region' has 9 distinct values.
# Convert 'Region' to a factor with custom levels
data$Region <- factor(data$Region, levels = 1:9)

# 6. Convert 'TrafficType' to Categorical:
#Assuming 'TrafficType' has 20 distinct values.
# Convert 'TrafficType' to a factor with custom levels
data$TrafficType <- factor(data$TrafficType, levels = 1:20)

#7. Convert 'VisitorType' to Categorical: Assuming 'VisitorType' has 3 distinct values.
# Convert 'VisitorType' to a factor with custom levels
data$VisitorType <- factor(data$VisitorType, levels = c("New_Visitor", 
                                                        "Returning_Visitor", "Other"))

#Verify Changes:Verify that the data types and levels have been updated.
# Check the structure of the updated dataset
str(data)

#Save Changes (if needed): If you want to save the changes to a new CSV file 
#or overwrite the existing one.
# Save the updated dataset
write.csv(data, "updated_data.csv", row.names = FALSE)
```

```{r}
# Load your dataset (replace 'your_dataset.csv' with your actual file name)
data <- read.csv("online_shoppers_intention.csv")

# Convert 'Month' to a categorical variable with custom levels
data$Month <- factor(data$Month, levels = unique(data$Month))

# Convert 'OperatingSystem' to a categorical variable with custom levels
data$OperatingSystem <- factor(data$OperatingSystem, levels = unique(data$OperatingSystem))

# Convert 'Browser' to a categorical variable with custom levels
data$Browser <- factor(data$Browser, levels = unique(data$Browser))

# Convert 'Region' to a categorical variable with custom levels
data$Region <- factor(data$Region, levels = unique(data$Region))

# Convert 'TrafficType' to a categorical variable with custom levels
data$TrafficType <- factor(data$TrafficType, levels = unique(data$TrafficType))

# Convert 'VisitorType' to a categorical variable with custom levels
data$VisitorType <- factor(data$VisitorType, levels = unique(data$VisitorType))

```
