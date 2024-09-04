# Welcome to my Data Analysis Portfolio! 

Hello, and welcome to my Data Analysis Portfolio! 🎉

Below you'll find a collection of projects and work samples that showcase my skills, experience, and passion for the field of Data Analytics. Each project is a demonstration of my ability to work with real-world data, perform insightful analysis, and present meaningful findings using a variety of tools and techniques.

Thank you for stopping by! 🚀

## Table of Contents
- [About](#about)
- [Portfolio Projects](#portfolio-projects)
  - [Python Projects](#python-projects)
    - [Titanic Survival Analysis](#titanic-survival-analysis)
    - [Marketing Campaign A/B Testing Analysis](#marketing-campaign-ab-testing)
  - [SQL Project](#sql-project)
    - [Company Data Mapping](#company-data-mapping)
  - [Excel](#excel--projects)
    - [Household Income Distribution and Highrise Building Price Analysis](https://github.com/InazNazifa/Data-Analyst-Portfolio/blob/main/Household%20Income%20Distribution%20and%20Highrise%20Building%20Price%20Analysis.xlsx)
    - [Product Optimization](https://github.com/InazNazifa/Data-Analyst-Portfolio/blob/main/Product%20Optimization.xls)
  - [Tableau](#tableau)
    - [Regional Sales and Profit Report](#regional-sales-and-profit-report)
  - [Power BI Report](#power-bi-report)
    - [Financial Report](#financial-report)
  
- [Education](#education)
- [LinkedIn Profile](#linkedin)
- [Contact](#contact)

## About
Hi, I'm Inaz! I am a highly motivated and aspiring pure mathematics student with a solid foundation in statistical analysis, 
machine learning and data visualization with a strong background in mathematics and programming. 
Feel free to explore the projects and learn more about the methodologies, datasets, and tools I’ve used. I hope you find my work interesting and informative. 

## Portfolio Projects

In this section, I will list data analytics projects and briefly describing the technology stack used to solve case studies.

### Python Projects

#### Titanic Survival Analysis

- **Data Source**: Provided in the code.
- **Code**: [Titanic Survival.ipynb](https://github.com/InazNazifa/Data-Analyst-Portfolio/blob/main/Titanic%20Survival.py)
- **Goal**: To analyze the survival rates of Titanic passengers based on the age groups, gender and fare distribution across pasenger classes.
- **Description**: The project focuses on a thorough analysis of the Titanic dataset to predict passenger survival using machine learning. The dataset contains demographic and travel-related information about the passengers aboard the Titanic. The project involves data preprocessing, including handling missing data, feature engineering, and building a classification model to predict survival outcomes. The analysis includes detailed Exploratory Data Analysis (EDA) to discover the relationships between passenger characteristics and survival rates.
- **Skills**: Data preprocessing, exploratory data analysis (EDA), feature, visualization.
- **Technology**: Python, Pandas, NumPy, Matplotlib, Seaborn, Scikit-learn.
- **Results**:
  1. Survival Rate by Gender (Bar Plot): The survival rate for females is significantly higher than that for males. This suggests that gender played an important role in survival, with women having a better chance of surviving the Titanic disaster.
  2. Survival Rate by Passenger Class (Bar Plot): The survival rate is highest for passengers in 1st class, followed by 2nd class, and is lowest for 3rd class. This indicates that wealth or class had a strong influence on the likelihood of survival, with wealthier passengers having a better chance.
  3. Age Distribution of Passengers (Histogram): Most passengers were in their 20s to 30s, with a peak around age 30. There are fewer passengers in the older age groups, and only a small number of children and elderly were on board.

#### Marketing Campaign A/B Testing Analysis

- **Data Source**: [Marketing Campaign.csv](https://github.com/InazNazifa/Data-Analyst-Portfolio/blob/main/Marketing%20Campaign.csv)
- **Code**: [Marketing Campaign.ipynb](https://github.com/InazNazifa/Data-Analyst-Portfolio/blob/main/Marketing%20Campaign.py)
- **Goal**: To predict whether a client will subscribe to a term deposit.
- **Description**: This project analyze the impact of two contact methods (telephone and cellular) on subscription rates using an A/B testing approach. The dataset is divided into control (telephone) and variant (cellular) groups. The subscription rates for each group calculated and a chi-square test performed to determine if the differences are statistically significant. Finally, a bar plot is created to visually compare the subscription rates between the two contact methods.
- **Skills**: Data wrangling, exploratory data analysis (EDA), hypothesis testing, visualization.
- **Technology**: Python, Pandas, NumPy, Matplotlib, Seaborn, Scikit-learn.
- **Results**:\
Subscription Rate for Control Group (Telephone): 14.62%\
Subscription Rate for Variant Group (Cellular): 14.36%\
Chi-square Statistic: 87.86985650165812, P-Value: 8.30430129641147e-20\
Reject the null hypothesis. The difference in subscription rates is statistically significant.

### SQL Projects

#### Company Data Mapping

- **Code**: [Company Database.sql](https://github.com/InazNazifa/Data-Analyst-Portfolio/blob/main/Company%20Database.sql)
- **Goal**: To map the realtionship of employees with branches, suppliers and clients, as well as keep track with total sales made by the company.
- **Company Data Requirements**: The company is structured around multiple branches. Each branch is identified by a unique number, has a name, and is overseen by a specific employee who serves as the manager. Revenue is generated by selling products to clients. Each client is assigned a unique identifier and has a name. The company's core strength lies in its employees. Every employee has a name, date of birth, gender, salary, and a unique employee ID. Employees are assigned to work at a single branch at any given time, and one of those employees is designated as the branch manager. Additionally, we need to track the date when the current manager took on that role. Employees can supervise other employees at their branch, and they may also supervise employees in other branches. However, an employee can only have one supervisor.A branch can serve multiple clients, and each client is associated with only one branch at a time.Employees engage with clients from their branch to sell products, and multiple employees can collaborate with the same client. For each transaction, we’ll record how much revenue each employee generates from each client they work with.Branches also need to purchase inventory from suppliers. For each supplier, we’ll record their name and the type of products they supply to the branch. A supplier can provide goods to several branches.
- **Skills**: Database management, SQL querying.
- **Technology**: MySQL Workbench, SQL.
- **Results**: Maintain a clear understanding of how employees, clients, suppliers, and branches are interconnected, allowing for easy retrieval of data and effective business decision-making.

### Tableau Project

#### Regional Sales and Profit Report

- **Goal**: To solve business problems, such as identifying the best-performing products and regions or understanding trends in sales and profitability of a Superstore dataset.
- **Description**: The Superstore dataset contains sales data for a fictional retail store across the United States. It includes information on sales transactions, product categories, customer demographics, and geographic regions. The dataset is used to create visualizations and dashboards in Tableau that help explore key business metrics such as sales, profit, and customer segments. Analysts can filter data, compare performance across different time periods, and track the profitability of specific products. The dataset is rich with variables like sales, profit, discount, shipping cost, and customer details which making it ideal for exploring business intelligence and analytics concepts.
- **Conclusion**: Businesses can gain valuable insights such as identifying the most profitable product categories, understanding which regions drive the highest sales, and recognizing customer segments that need attention. For example, specific sub-categories like furniture or office supplies might be more profitable, while certain regions could show a decline in performance. The analysis helps decision-makers focus on high-potential areas for investment and growth, ensuring better resource allocation and improving overall business strategy.
- **Link to Tableau Public**: [ Regional Sales and Profit Report](https://public.tableau.com/app/profile/inaz.nazifa.dzulkifli/viz/RegionalSalesandProfits_17136209917210/Dashboard3?publish=yes)

### Power BI Project

#### Financial Report

- **Data Source**:  [ Financial.xslx](https://github.com/InazNazifa/Data-Analyst-Portfolio/blob/main/Financial%20Sample%20(1).xlsx)
- **Goal**: To analyze financial data for insights on profits generated based on year, geographical performance and investment strategy based on specific product and customer segment.
- **Description**:
  - **Dashboards**:
    - Overview: Summary of all dashboards.
    - Profit by Date: December 2014 had the most profit.
    - Profit by Country or Region: Europe seems to be performing better than North America.
    - Sales by Product and Segment: The company should continue to invest in the Paseo product and target the Small Business and Government segments.
- **Conclusion**: The project provided actionable insights about profitability, geographical performance, and investment strategy.
- **Link to Power BI Report**: [Financial Report](https://app.powerbi.com/groups/me/reports/ac9c378f-78e9-4b5e-8830-4cb963056a46/9662ba068c5b1eae94dd?experience=power-bi)

## Education

**Universiti Sains Malaysia, Bachelor's degree, Mathematics (Major) Computer Science (Minor)** 2020 - 2024

## Contact

- [LinkedIn](https://www.linkedin.com/in/inaznazifa/)
- Email: inaznazifa@gmail.com
