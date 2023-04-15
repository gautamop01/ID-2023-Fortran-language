import pandas as pd
from matplotlib import pyplot as plt

# Set the figure size
plt.rcParams["figure.figsize"] = [7.00, 3.50]
plt.rcParams["figure.autolayout"] = True

# Read a CSV file
df = pd.read_csv("ASSIGNMENT_1_A.csv", names=['X', 'Y', 'Z'])

# Filter the dataframe to keep only the rows where Y is greater than zero
df = df[df['Y'] > 0]

# Plot the X coordinate against the probability
plt.plot(df['X'], df.index / len(df), color='blue')

# Set the axis labels
plt.xlabel('X coordinate')
plt.ylabel('Probability')

plt.show()
