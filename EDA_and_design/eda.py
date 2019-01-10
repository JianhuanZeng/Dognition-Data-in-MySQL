import numpy as np # linear algebra
import pandas as pd # data processing, CSV file I/O (e.g. pd.read_csv)
import matplotlib.pyplot as plt

dognition_data = pd.read_csv("dognition_data.csv", parse_dates=["date"])
dognition_data.rate.describe()

plt.figure(figsize=(12, 5))
plt.hist(dognition_data.rate.values, bins=200)
plt.title('Histogram rate counts')
plt.xlabel('Count')
plt.ylabel('Target')
plt.show()
