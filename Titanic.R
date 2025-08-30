### Visualization: Comparative Boxplot for Survival Rate by Fare

# Create a box plot
boxplot( TitanicData$fare ~ TitanicData$survived, col = c("red", "green"), main="Boxplots of Fare by Survival Rate", xlab="Survival Rate", ylab="Fare", horizontal=F )

# Load ggplot2 for visualization
library(ggplot2)

# Create a comparative boxplot of survival rate by fare
ggplot(TitanicData, aes(x = survived, y = fare, fill = survived)) + 
  geom_boxplot() + 
  labs(title = "Comparative Boxplot of Survival Rate by Fare",
       x = "Survival Status",
       y = "Fare") +
  theme_minimal()

#############

### Statistical Analysis for Categorical Variables

# Create a two-way table for survival by gender
table_bygender = table(TitanicData$survived, TitanicData$Gender)
colnames(table_bygender)=c("Male", "Female")
table_bygender

# Perform a chi-square test for survival by gender
chisq.test(table_bygender)

# Create a two-way table for survival by passenger class
table_bypclass = table(TitanicData$survived, TitanicData$pclass)
colnames(table_bypclass)=c("1st", "2nd", "3rd")
table_bypclass

# Perform a chi-square test for survival by passenger class
chisq.test(table_bypclass)

# Create a two-way table for survival by residence
table_byres =table(TitanicData$survived, TitanicData$Residence)
colnames(table_byres)=c("American", "British", "Other")
table_byres

# Perform a chi-square test for survival by residence
chisq.test(table_byres)

# Create a two-way table for gender by passenger class
table_genbypclass = table(TitanicData$Gender, TitanicData$pclass)
rownames(table_genbypclass)=c("Male", "Female")
colnames(table_genbypclass)=c("1st", "2nd", "3rd")
table_genbypclass

# Perform a chi-square test for gender by passenger class
chisq.test(table_genbypclass)
