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

