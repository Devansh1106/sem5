---
title: Machine Learning I  
lecturer: Prof. M. P. Rajan  
author: Devansh Tripathi  
---
Four V's of data:
- Volume
- Velocity
- Variety
- Veracity: Stability of the data

```python
m = np.array([1,2,3],[2,3,4]) # 2D array  
m.ravel # convert 2D to 1D  
m.reshape(dims) # convert `m' to any dimension 
```
Function for data cleaning:  
```python
df.isnull() # checks for null data
df.fillna(value) # fill null values of df with "value"
df.dropna() # it drops all null values of df
```
Data Transforamtion
```python
data = np.array("male","female")
from sklearn.preprocessing import LabelBinaries
lb = LabelBinarizer()       # for conversion to binary classification
# lb.fit = Make automatic classes and classify data into those
# lb.classes_ = can be used to get name of the classes
# 
tdata = lb.fit_transform(data) # convert data to numerical format 
lb.inverse_transform(tdata)    # from numerical format to original format
```
### Exploratory Data Analysis (EDA)
defn 
#### Tools for EDA:  
plots, graphs, summary status()
```python
stddata = pd.read_cav("std.csv")
wt = stddata.iloc[:,2]  # if second column is weight
ht = stddata.iloc[:,1]  # if second column is height
np.mean(wt) # mean and similarly for others median etc.
np.std(wt)  # standard deviation
stddata.describe()  # provide summary statistics for whole dataset
wt.describe()       # summary statistics for weight
```
##### Pairwaise relationship
Use scatter plot.  
To quantity it, use correlation coefficient(R), $-1 \leq R \leq 1$
$$ R = \frac{\sum(x_i - \bar{x})(y_i - \bar{y})}{\sqrt{\sum(x_i - \bar{x})\sum(y_i - \bar{y})}} $$
In python, we can use
```python
np.corrcoef(data)
```
#### Normal dataset 
Dataset is following normal distribution. If we are using histogram, then the rectangles will follow the bell curve.  
Peak will be at median of the data. And $ mean = median = mode$

#### Approximate Normal dataset
Mean and median will be approximately equal.

#### Skewed dataset
Left tail skewed: peak shifted to the most left.
Right tail skewed: peak shifted to the most right.
