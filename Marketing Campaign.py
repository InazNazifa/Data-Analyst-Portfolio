import pandas as pd
from scipy import stats
import matplotlib.pyplot as plt
import seaborn as sns

# Load the dataset
df = pd.read_csv('Marketing Campaign.csv')

# Filter the control (telephone) and variant (cellular) groups
control_group = df[df['contact'] == 'telephone']
variant_group = df[df['contact'] == 'cellular']

# Calculate the subscription rate for each group
subscription_rate_control = control_group['y'].value_counts(normalize=True)['yes'] * 100
subscription_rate_variant = variant_group['y'].value_counts(normalize=True)['yes'] * 100

print(f"Subscription Rate for Control Group (Telephone): {subscription_rate_control:.2f}%")
print(f"Subscription Rate for Variant Group (Cellular): {subscription_rate_variant:.2f}%")

# Perform a chi-square test to compare subscription rates
contingency_table = pd.crosstab(df['contact'], df['y'])
chi2_stat, p_val, dof, expected = stats.chi2_contingency(contingency_table)

print(f"Chi-square Statistic: {chi2_stat}, P-Value: {p_val}")

# Interpretation
alpha = 0.05
if p_val < alpha:
    print("Reject the null hypothesis. The difference in subscription rates is statistically significant.")
else:
    print("Fail to reject the null hypothesis. The difference in subscription rates is not statistically significant.")

# Data Visualization: Bar Plot of Subscription Rates
# Prepare data for visualization
subscription_rates = pd.DataFrame({
    'Contact Method': ['Telephone', 'Cellular'],
    'Subscription Rate (%)': [subscription_rate_control, subscription_rate_variant]
})

# Set up the figure and axis
plt.figure(figsize=(8, 6))

# Create a bar plot to visualize subscription rates
sns.barplot(x='Contact Method', y='Subscription Rate (%)', data=subscription_rates)

# Add titles and labels
plt.title('Subscription Rate by Contact Method', fontsize=16)
plt.xlabel('Contact Method', fontsize=12)
plt.ylabel('Subscription Rate (%)', fontsize=12)

# Show the plot
plt.show()
