import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

# Download the Titanic dataset directly from an available GitHub repository
url = "https://raw.githubusercontent.com/datasciencedojo/datasets/master/titanic.csv"
df = pd.read_csv(url)

# Display the first few rows
print(df.head())

# 1. Data Cleaning - Handling missing values
df.isnull().sum()  # Check for missing values

# Fill missing age values with the median
df['Age'].fillna(df['Age'].median(), inplace=True)

# Drop rows where Embarked is missing
df.dropna(subset=['Embarked'], inplace=True)

# 2. Descriptive Statistics
print(df.describe())  # General statistics of numerical columns
print(df['Survived'].value_counts())  # Count how many survived/did not survive

# 3. Visualize relationships
# Survival rate by gender
sns.barplot(x='Sex', y='Survived', data=df)
plt.title('Survival Rate by Gender')
plt.show()

# Survival rate by passenger class
sns.barplot(x='Pclass', y='Survived', data=df)
plt.title('Survival Rate by Passenger Class')
plt.show()

# Age distribution
plt.hist(df['Age'], bins=30)
plt.title('Age Distribution of Passengers')
plt.xlabel('Age')
plt.ylabel('Number of Passengers')
plt.show()

# 4. Correlation heatmap
plt.figure(figsize=(10, 8))
sns.heatmap(df.corr(), annot=True, cmap='coolwarm')
plt.title('Correlation Heatmap')
plt.show()