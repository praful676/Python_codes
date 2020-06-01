# -*- coding: utf-8 -*-
"""
Created on Mon Jun  1 16:16:01 2020

@author: prafulla
"""

#--------------------------------------------------- Linear Regression ---------------------------------------------------


import pandas as pd

ppt= pd.read_csv("file:///C:/Users/prafulla/Desktop/Whatsapp/Property_Price_Train.csv")
ppt.head()
ppt.shape

pd.set_option("display.max_rows",None)
ppt.isnull().sum()

print(ppt.Fireplace_Quality.value_counts()) 
ppt.Fireplace_Quality = ppt.Fireplace_Quality.fillna("Gd")

ppt.Lot_Extent        = ppt.Lot_Extent.fillna(ppt.Lot_Extent.mean())

print(ppt.Garage_Condition.value_counts()) 
ppt.Garage_Condition = ppt.Garage_Condition.fillna("TA")

print(ppt.Garage_Quality.value_counts()) 
ppt.Garage_Quality = ppt.Garage_Quality.fillna("TA")

print(ppt.Garage_Finish_Year.value_counts()) 
ppt.Garage_Finish_Year = ppt.Garage_Finish_Year.fillna("unf")

print(ppt.Garage_Built_Year.value_counts()) 
ppt.Garage_Built_Year = ppt.Garage_Built_Year.fillna(2005)

print(ppt.Garage.value_counts()) 
ppt.Garage = ppt.Garage.fillna("Attchd")

print(ppt.Basement_Height.value_counts()) 
ppt.Basement_Height = ppt.Basement_Height.fillna("TA")

print(ppt.Basement_Condition.value_counts()) 
ppt.Basement_Condition = ppt.Basement_Condition.fillna("TA")

print(ppt.Exposure_Level.value_counts()) 
ppt.Exposure_Level = ppt.Exposure_Level.fillna("No")

print(ppt.BsmtFinType1.value_counts()) 
ppt.BsmtFinType1 = ppt.BsmtFinType1.fillna("Unf")

print(ppt.BsmtFinType2.value_counts()) 
ppt.BsmtFinType2 = ppt.BsmtFinType2.fillna("Unf")

print(ppt.Electrical_System.value_counts()) 
ppt.Electrical_System       = ppt.Electrical_System.fillna("SBrkr")

#remove those columns which has more na values

ppt.drop(["Pool_Quality","Miscellaneous_Feature","Fence_Quality","Lane_Type"], axis = 1, inplace = True)

pd.set_option("display.max_rows",None)                                # for view of all rows
ppt.isnull().sum() 
ppt = ppt.dropna()
ppt.isnull().sum() 
ppt.shape

# encoding the categorical variables

from sklearn.preprocessing import LabelEncoder
le = LabelEncoder()

ppt.Zoning_Class = le.fit_transform(ppt.Zoning_Class)

ppt.Road_Type = le.fit_transform(ppt.Road_Type)

ppt.Property_Shape = le.fit_transform(ppt.Property_Shape)

ppt.Land_Outline = le.fit_transform(ppt.Land_Outline)

ppt.Utility_Type = le.fit_transform(ppt.Utility_Type)

ppt.Lot_Configuration = le.fit_transform(ppt.Lot_Configuration)

ppt.Property_Slope = le.fit_transform(ppt.Property_Slope)

ppt.Neighborhood = le.fit_transform(ppt.Neighborhood)

ppt.Condition1 = le.fit_transform(ppt.Condition1)

ppt.Condition2 = le.fit_transform(ppt.Condition2)

ppt.House_Type = le.fit_transform(ppt.House_Type)

ppt.House_Design = le.fit_transform(ppt.House_Design)

ppt.Roof_Design = le.fit_transform(ppt.Roof_Design)

ppt.Roof_Quality = le.fit_transform(ppt.Roof_Quality)

ppt.Exterior1st = le.fit_transform(ppt.Exterior1st)

ppt.Exterior2nd = le.fit_transform(ppt.Exterior2nd)

ppt.Brick_Veneer_Type = le.fit_transform(ppt.Brick_Veneer_Type)

ppt.Exterior_Material = le.fit_transform(ppt.Exterior_Material)

ppt.Exterior_Condition = le.fit_transform(ppt.Exterior_Condition)

ppt.Foundation_Type = le.fit_transform(ppt.Foundation_Type)

ppt.Basement_Height = le.fit_transform(ppt.Basement_Height)

ppt.Basement_Condition = le.fit_transform(ppt.Basement_Condition)

ppt.Exposure_Level = le.fit_transform(ppt.Exposure_Level)

ppt.BsmtFinType1 = le.fit_transform(ppt.BsmtFinType1)

ppt.BsmtFinType2 = le.fit_transform(ppt.BsmtFinType2)

ppt.Heating_Type = le.fit_transform(ppt.Heating_Type)

ppt.Heating_Quality = le.fit_transform(ppt.Heating_Quality)

ppt.Air_Conditioning = le.fit_transform(ppt.Air_Conditioning)

ppt.Electrical_System = le.fit_transform(ppt.Electrical_System)

ppt.Kitchen_Quality = le.fit_transform(ppt.Kitchen_Quality)

ppt.Functional_Rate = le.fit_transform(ppt.Functional_Rate)

ppt.Fireplace_Quality = le.fit_transform(ppt.Fireplace_Quality)

ppt.Garage = le.fit_transform(ppt.Garage)

ppt.Garage_Finish_Year = le.fit_transform(ppt.Garage_Finish_Year)

ppt.Garage_Quality = le.fit_transform(ppt.Garage_Quality)

ppt.Garage_Condition = le.fit_transform(ppt.Garage_Condition)

ppt.Pavedd_Drive = le.fit_transform(ppt.Pavedd_Drive)

ppt.Sale_Type = le.fit_transform(ppt.Sale_Type)

ppt.Sale_Condition = le.fit_transform(ppt.Sale_Condition)

pd.set_option("display.max_columns", None)
ppt.head()
ppt.shape

# factorise the categorical variables

ppt.Zoning_Class = ppt.Zoning_Class.astype('category')

ppt.Road_Type = ppt.Road_Type.astype('category')

ppt.Property_Shape = ppt.Property_Shape.astype('category')

ppt.Land_Outline = ppt.Land_Outline.astype('category')

ppt.Utility_Type = ppt.Utility_Type.astype('category')

ppt.Lot_Configuration = ppt.Lot_Configuration.astype('category')

ppt.Property_Slope = ppt.Property_Slope.astype('category')

ppt.Neighborhood = ppt.Neighborhood.astype('category')

ppt.Condition1 = ppt.Condition1.astype('category')

ppt.Condition2 = ppt.Condition2.astype('category')

ppt.House_Type = ppt.House_Type.astype('category')

ppt.House_Design = ppt.House_Design.astype('category')

ppt.Roof_Design = ppt.Roof_Design.astype('category')

ppt.Roof_Quality = ppt.Roof_Quality.astype('category')

ppt.Exterior1st = ppt.Exterior1st.astype('category')

ppt.Exterior2nd = ppt.Exterior2nd.astype('category')

ppt.Brick_Veneer_Type = ppt.Brick_Veneer_Type.astype('category')

ppt.Exterior_Material = ppt.Exterior_Material.astype('category')

ppt.Exterior_Condition = ppt.Exterior_Condition.astype('category')

ppt.Foundation_Type = ppt.Foundation_Type.astype('category')

ppt.Basement_Height = ppt.Basement_Height.astype('category')

ppt.Basement_Condition = ppt.Basement_Condition.astype('category')

ppt.Exposure_Level = ppt.Exposure_Level.astype('category')

ppt.BsmtFinType1 = ppt.BsmtFinType1.astype('category')

ppt.BsmtFinType2 = ppt.BsmtFinType2.astype('category')

ppt.Heating_Type = ppt.Heating_Type.astype('category')

ppt.Heating_Quality = ppt.Heating_Quality.astype('category')

ppt.Air_Conditioning = ppt.Air_Conditioning.astype('category')

ppt.Electrical_System = ppt.Electrical_System.astype('category')

ppt.Kitchen_Quality = ppt.Kitchen_Quality.astype('category')

ppt.Functional_Rate = ppt.Functional_Rate.astype('category')

ppt.Fireplace_Quality = ppt.Fireplace_Quality.astype('category')

ppt.Garage = ppt.Garage.astype('category')

ppt.Garage_Finish_Year = ppt.Garage_Finish_Year.astype('category')

ppt.Garage_Quality = ppt.Garage_Quality.astype('category')

ppt.Garage_Condition = ppt.Garage_Condition.astype('category')

ppt.Pavedd_Drive = ppt.Pavedd_Drive.astype('category')

ppt.Sale_Type = ppt.Sale_Type.astype('category')

ppt.Sale_Condition = ppt.Sale_Condition.astype('category')
ppt.describe(include = 'all')

# remove the first unwnated id column

ppt = ppt.iloc[:,1:77]
ppt.head()
ppt.shape

# selecting x and y variables

ppt_x = ppt.iloc[:,0:75]

ppt_y = ppt.iloc[:,-1]

# training and testing

import sklearn
from sklearn.model_selection import train_test_split
ppt_x_train, ppt_x_test, ppt_y_train, ppt_y_test = train_test_split(ppt_x, ppt_y, test_size = .2, random_state = 101)

# fit linear model on train data

from sklearn import linear_model
lm_model = linear_model.LinearRegression()
lm_model.fit(ppt_x_train, ppt_y_train)

# prediction on test data

predicted = lm_model.predict(ppt_x_test)
predicted.shape

lm_model.intercept_


# R-sq

R_sq = lm_model.score(ppt_x_train, ppt_y_train)
R_sq

# Adj R-sq

ppt.shape

adj_R_sq = 1-(((1-R_sq)*(1450-1))/(1450-76-1))
adj_R_sq

# feature selection

from sklearn.ensemble import RandomForestClassifier
rfc = RandomForestClassifier()
rfc.fit(ppt_x_train, ppt_y_train)

imp_var = pd.DataFrame({"Importance":list(rfc.feature_importances_),"Feature":list(ppt_x.columns)})
imp_var

imp_var.sort_values(["Importance"],ascending = False)

imp_var.shape


#--------- Lungcap Data------------

import pandas as pd

lcn = pd.read_csv("file:///C:/Users/prafulla/Desktop/Whatsapp/LungCapData.csv")

# encoiding the categorical variable

from sklearn.preprocessing import LabelEncoder
le = LabelEncoder()

lcn.Gender = le.fit_transform(lcn.Gender)
lcn.Smoke = le.fit_transform(lcn.Smoke)
lcn.Caesarean = le.fit_transform(lcn.Caesarean)
lcn.head()

# factorize the categorical variable

lcn.Gender = lcn.Gender.astype('category')
lcn.Smoke = lcn.Smoke.astype('category')
lcn.Caesarean = lcn.Caesarean.astype('category')
lcn.describe(include = 'all')
lcn.head()
lcn.shape

# selecting the x and y variables

lcn_x = lcn.iloc[:,1:6]
lcn_y = lcn.iloc[:,0]

# traning and testing

import sklearn
from sklearn.model_selection import train_test_split
lcn_x_train, lcn_x_test, lcn_y_train, lcn_y_test = train_test_split(lcn_x, lcn_y, test_size = .2, random_state = 101)

# build model on train data

from sklearn import linear_model
model = linear_model.LinearRegression()
model.fit(lcn_x_train, lcn_y_train)

# prediction on tet data

predicted = model.predict(lcn_x_test)

# calculte score and r.sqr

# Score

score = model.score(lcn_x_train, lcn_y_train)
score

# R_Sqr

# r_sq = (ssr) / (sse + ssr)

# ssr: difference between predicted y value and mean of actual mean value of y
# sse: differnce between actual y and predicted y

import numpy as np

predicted1 = model.predict(lcn_x_train)

mean_y = lcn_y_train.mean()
mean_y

difference = np.square(predicted1 - mean_y)
difference

SSR = difference.mean()
SSR

difference1 = np.square(predicted1 - lcn_y_train)
difference1

SSE = difference1.mean()
SSE

# r_sqr

R_SQR = SSR/(SSR+SSE)
R_SQR

# Adjusted R_Sqr

# adj_R_sqr = 1 - ((1-r_sqr)*(n-1))/(n-k-1))

lcn.shape

adj_sqr = 1 - (((1-R_SQR)*(723))/(724-6-1))
adj_sqr

# model summary

#--------------------------------------------------- Logistic Regression ---------------------------------------------------

# import data
import pandas as pd
cr = pd.read_csv("file:///C:/Users/prafulla/Desktop/Whatsapp/CreditRisk.csv")
cr.head()
cr.shape

# remove id column

cr = cr.iloc[:,1:13]
cr.shape
cr.head()

# dealing with nulls

cr.isnull().sum()

print(cr.Credit_History.value_counts())
cr.Credit_History = cr.Credit_History.fillna(1)

print(cr.Self_Employed.value_counts())
cr.Self_Employed = cr.Self_Employed.fillna("No")

cr.LoanAmount  = cr.LoanAmount.fillna(cr.LoanAmount.mean())

print(cr.Dependents.value_counts()) 
cr.Dependents = cr.Dependents.fillna(0)

print(cr.Gender.value_counts()) 
cr.Gender = cr.Gender.fillna("Male")

print(cr.Loan_Amount_Term.value_counts()) 
cr.Loan_Amount_Term = cr.Loan_Amount_Term.fillna(360)

cr.isnull().sum()
cr = cr.dropna()
cr.isnull().sum()
cr.shape

# encoding the categorical variables

from sklearn.preprocessing import LabelEncoder
le = LabelEncoder()

cr.Loan_Status = le.fit_transform(cr.Loan_Status)
cr.Property_Area = le.fit_transform(cr.Property_Area)
cr.Self_Employed = le.fit_transform(cr.Self_Employed) 
cr.Education = le.fit_transform(cr.Education)
cr.Married = le.fit_transform(cr.Married)
cr.Gender = le.fit_transform(cr.Gender)
cr.head()

# factorise the categorical variables

cr.Gender = cr.Gender.astype('category')
cr.Married = cr.Married.astype('category')
cr.Education = cr.Education.astype('category')
cr.Self_Employed = cr.Self_Employed.astype('category')
cr.Property_Area = cr.Property_Area.astype('category')
cr.Credit_History = cr.Credit_History.astype('category')
cr.Loan_Status = cr.Loan_Status.astype('category')
cr.describe(include = 'all')

# selecting x and y variables

cr.shape

cr_x = cr.iloc[:,0:11]

cr_y = cr.iloc[:,-1]

# training and testing

import sklearn
from sklearn.model_selection import train_test_split
cr_x_train, cr_x_test, cr_y_train, cr_y_test = train_test_split(cr_x, cr_y, test_size = 0.2, random_state = 101)

# build logistic model on train data

from sklearn.linear_model import LogisticRegression
log_model = LogisticRegression()
log_model.fit(cr_x_train, cr_y_train)

# prediction on test data

predicted = log_model.predict(cr_x_test)
predicted

# confusion matrix

from sklearn.metrics import confusion_matrix
tab = confusion_matrix(predicted, cr_y_test)
tab

# accuracy

tab.diagonal().sum() / tab.sum()

# score

log_model.score(cr_x_test, cr_y_test)

# feature selection

from sklearn.ensemble import RandomForestClassifier
rfc = RandomForestClassifier()
rfc.fit(cr_x_train, cr_y_train)

imp_var = pd.DataFrame({"Importance":list(rfc.feature_importances_),"Feature":list(cr_x.columns)})
imp_var

imp_var.sort_values(["Importance"],ascending = False)

imp_var.shape

#--------------------------------------------------- Decision Tree ---------------------------------------------------

# import data

import pandas as pd
ctg = pd.read_csv("file:///C:/Users/prafulla/Desktop/Whatsapp/CTG.csv") 
ctg.head()
ctg.shape
ctg.isnull().sum()
ctg.describe(include = 'all')

# selecting x and y variables

ctg_x = ctg.iloc[:,0:3]

ctg_y = ctg.iloc[:,-1]

# training and testing

from sklearn.model_selection import train_test_split
ctg_x_train, ctg_x_test, ctg_y_train, ctg_y_test = train_test_split(ctg_x, ctg_y, test_size = 0.2, random_state = 101)

# build decision tree on train data

from sklearn.tree import DecisionTreeClassifier
dtree = DecisionTreeClassifier(min_samples_split = 100)
dtree.fit(ctg_x_train, ctg_y_train)

# prediction on test data

predicted = dtree.predict(ctg_x_test)
predicted

# confusion matrix

from sklearn.metrics import confusion_matrix
tab = confusion_matrix(predicted, ctg_y_test)
tab

# accuracy

acc = tab.diagonal().sum() / tab.sum()
acc

# score

score = dtree.score(ctg_x_test, ctg_y_test)
score

# feature selection

imp_var = pd.DataFrame({"Importance":list(dtree.feature_importances_),"Feature":list(ctg_x.columns)})
imp_var

imp_var.sort_values(['Importance'], ascending = False)

import numpy as np
import matplotlib.pyplot as plt
import pandas as pd

#--------------------------------------------------- Random Forest ---------------------------------------------------

# import data
import pandas as pd
cr = pd.read_csv("file:///C:/Users/prafulla/Desktop/Whatsapp/CreditRisk.csv")
cr.head()
cr.shape

# remove id column

cr = cr.iloc[:,1:13]
cr.shape
cr.head()

# dealing with nulls

cr.isnull().sum()

print(cr.Credit_History.value_counts())
cr.Credit_History = cr.Credit_History.fillna(1)

print(cr.Self_Employed.value_counts())
cr.Self_Employed = cr.Self_Employed.fillna("No")

cr.LoanAmount  = cr.LoanAmount.fillna(cr.LoanAmount.mean())

print(cr.Dependents.value_counts()) 
cr.Dependents = cr.Dependents.fillna(0)

print(cr.Gender.value_counts()) 
cr.Gender = cr.Gender.fillna("Male")

print(cr.Loan_Amount_Term.value_counts()) 
cr.Loan_Amount_Term = cr.Loan_Amount_Term.fillna(360)

cr.isnull().sum()
cr = cr.dropna()
cr.isnull().sum()
cr.shape

# encoding the categorical variables

from sklearn.preprocessing import LabelEncoder
le = LabelEncoder()

cr.Loan_Status = le.fit_transform(cr.Loan_Status)
cr.Property_Area = le.fit_transform(cr.Property_Area)
cr.Self_Employed = le.fit_transform(cr.Self_Employed) 
cr.Education = le.fit_transform(cr.Education)
cr.Married = le.fit_transform(cr.Married)
cr.Gender = le.fit_transform(cr.Gender)
cr.head()

# factorise the categorical variables

cr.Gender = cr.Gender.astype('category')
cr.Married = cr.Married.astype('category')
cr.Education = cr.Education.astype('category')
cr.Self_Employed = cr.Self_Employed.astype('category')
cr.Property_Area = cr.Property_Area.astype('category')
cr.Credit_History = cr.Credit_History.astype('category')
cr.Loan_Status = cr.Loan_Status.astype('category')
cr.describe(include = 'all')

# selecting x and y variables

cr.shape

cr_x = cr.iloc[:,0:11]

cr_y = cr.iloc[:,-1]

# training and testing

import sklearn
from sklearn.model_selection import train_test_split
cr_x_train, cr_x_test, cr_y_train, cr_y_test = train_test_split(cr_x, cr_y, test_size = 0.2, random_state = 101)

# fit the random forest on train data

from sklearn.ensemble import RandomForestClassifier
RFC = RandomForestClassifier()
RFC.fit(cr_x_train, cr_y_train)

# prediction on test data

predicted = RFC.predict(cr_x_test)
predicted

# confusion matrix

from sklearn.metrics import confusion_matrix
tab = confusion_matrix(predicted, cr_y_test)
tab

# accuracy

acc = tab.diagonal().sum() / tab.sum()
acc

# score

RFC.score(cr_x_test, cr_y_test)

#--------------------------------------------------- SVM ---------------------------------------------------


# import data
import pandas as pd
cr = pd.read_csv("file:///C:/Users/prafulla/Desktop/Whatsapp/CreditRisk.csv")
cr.head()
cr.shape

# remove id column

cr = cr.iloc[:,1:13]
cr.shape
cr.head()

# dealing with nulls

cr.isnull().sum()

print(cr.Credit_History.value_counts())
cr.Credit_History = cr.Credit_History.fillna(1)

print(cr.Self_Employed.value_counts())
cr.Self_Employed = cr.Self_Employed.fillna("No")

cr.LoanAmount  = cr.LoanAmount.fillna(cr.LoanAmount.mean())

print(cr.Dependents.value_counts()) 
cr.Dependents = cr.Dependents.fillna(0)

print(cr.Gender.value_counts()) 
cr.Gender = cr.Gender.fillna("Male")

print(cr.Loan_Amount_Term.value_counts()) 
cr.Loan_Amount_Term = cr.Loan_Amount_Term.fillna(360)

cr.isnull().sum()
cr = cr.dropna()
cr.isnull().sum()
cr.shape

# encoding the categorical variables

from sklearn.preprocessing import LabelEncoder
le = LabelEncoder()

cr.Loan_Status = le.fit_transform(cr.Loan_Status)
cr.Property_Area = le.fit_transform(cr.Property_Area)
cr.Self_Employed = le.fit_transform(cr.Self_Employed) 
cr.Education = le.fit_transform(cr.Education)
cr.Married = le.fit_transform(cr.Married)
cr.Gender = le.fit_transform(cr.Gender)
cr.head()

# factorise the categorical variables

cr.Gender = cr.Gender.astype('category')
cr.Married = cr.Married.astype('category')
cr.Education = cr.Education.astype('category')
cr.Self_Employed = cr.Self_Employed.astype('category')
cr.Property_Area = cr.Property_Area.astype('category')
cr.Credit_History = cr.Credit_History.astype('category')
cr.Loan_Status = cr.Loan_Status.astype('category')
cr.describe(include = 'all')

# selecting x and y variables

cr.shape

cr_x = cr.iloc[:,0:11]

cr_y = cr.iloc[:,-1]

# training and testing

import sklearn
from sklearn.model_selection import train_test_split
cr_x_train, cr_x_test, cr_y_train, cr_y_test = train_test_split(cr_x, cr_y, test_size = 0.2, random_state = 101)

# build SVM on train data

from sklearn.svm import SVC
svc_model = SVC()
svc_model.fit(cr_x_train, cr_y_train)

# prediction on test data

predicted = svc_model.predict(cr_x_test)
predicted

# confusion matrix

from sklearn.metrics import confusion_matrix
tab = confusion_matrix(predicted, cr_y_test)
tab

# accuracy

acc = tab.diagonal().sum() / tab.sum()
acc

# score

score = svc_model.score(cr_x_test, cr_y_test)
score

#------------------------------------------------------------ KNN --------------------------------------------------------

# import data
import pandas as pd
cr = pd.read_csv("file:///C:/Users/prafulla/Desktop/Whatsapp/CreditRisk.csv")
cr.head()
cr.shape

# remove id column

cr = cr.iloc[:,1:13]
cr.shape
cr.head()

# dealing with nulls

cr.isnull().sum()

print(cr.Credit_History.value_counts())
cr.Credit_History = cr.Credit_History.fillna(1)

print(cr.Self_Employed.value_counts())
cr.Self_Employed = cr.Self_Employed.fillna("No")

cr.LoanAmount  = cr.LoanAmount.fillna(cr.LoanAmount.mean())

print(cr.Dependents.value_counts()) 
cr.Dependents = cr.Dependents.fillna(0)

print(cr.Gender.value_counts()) 
cr.Gender = cr.Gender.fillna("Male")

print(cr.Loan_Amount_Term.value_counts()) 
cr.Loan_Amount_Term = cr.Loan_Amount_Term.fillna(360)

cr.isnull().sum()
cr = cr.dropna()
cr.isnull().sum()
cr.shape

# encoding the categorical variables

from sklearn.preprocessing import LabelEncoder
le = LabelEncoder()

cr.Loan_Status = le.fit_transform(cr.Loan_Status)
cr.Property_Area = le.fit_transform(cr.Property_Area)
cr.Self_Employed = le.fit_transform(cr.Self_Employed) 
cr.Education = le.fit_transform(cr.Education)
cr.Married = le.fit_transform(cr.Married)
cr.Gender = le.fit_transform(cr.Gender)
cr.head()

# factorise the categorical variables

cr.Gender = cr.Gender.astype('category')
cr.Married = cr.Married.astype('category')
cr.Education = cr.Education.astype('category')
cr.Self_Employed = cr.Self_Employed.astype('category')
cr.Property_Area = cr.Property_Area.astype('category')
cr.Credit_History = cr.Credit_History.astype('category')
cr.Loan_Status = cr.Loan_Status.astype('category')
cr.describe(include = 'all')

# selecting x and y variables

cr.shape

cr_x = cr.iloc[:,0:11]

cr_y = cr.iloc[:,-1]

# training and testing

import sklearn
from sklearn.model_selection import train_test_split
cr_x_train, cr_x_test, cr_y_train, cr_y_test = train_test_split(cr_x, cr_y, test_size = 0.2, random_state = 101)

# build knn on train data

from sklearn.neighbors import KNeighborsClassifier
knn = KNeighborsClassifier(n_neighbors = 7)
knn.fit(cr_x_train, cr_y_train)

# prediction on test data

predicted = knn.predict(cr_x_test)
predicted

# confusion matrix

from sklearn.metrics import confusion_matrix
tab = confusion_matrix(predicted, cr_y_test)
tab

# accuracy 

acc = tab.diagonal().sum() / tab.sum()
acc

# score

score = knn.score(cr_x_test, cr_y_test)
score

# check the value of k in knn

# sqrt of number of observations here n = 978


import numpy as np
import matplotlib.pyplot as plt
import pandas as pd

np.sqrt(978)


aa = []

for i in range(0,50):
    print(i, end=', ')
    knn = KNeighborsClassifier(n_neighbors =i)
    knn.fit(cr_x_train, cr_y_train)
    pred_knn = knn.predict(cr_x_test)
    aa.append(np.mean(pred_knn != cr_y_test))
    
    plt.figure(figsize=(12,6))
plt.plot(range(1,50), aa, color = 'red', linestyle= 'dashed', marker = 'o', markerfacecolor= 'blue', markersize = 10)
plt.title('Error Rate k value')
plt.xlabel('k value')
plt.ylabel('mean error')
plt.show()

#---------------------------------------------------------------------------------------------------
# In below graph the lowest value of mean error for if k value is near to 3...
# if we put k=3 then we will get better accuracy i.e 0.80098

#------------------------------------------------------------ Nive Bayes --------------------------------------------------------

# import data
import pandas as pd
cr = pd.read_csv("file:///C:/Users/prafulla/Desktop/Whatsapp/CreditRisk.csv")
cr.head()
cr.shape

# remove id column

cr = cr.iloc[:,1:13]
cr.shape
cr.head()

# dealing with nulls

cr.isnull().sum()

print(cr.Credit_History.value_counts())
cr.Credit_History = cr.Credit_History.fillna(1)

print(cr.Self_Employed.value_counts())
cr.Self_Employed = cr.Self_Employed.fillna("No")

cr.LoanAmount  = cr.LoanAmount.fillna(cr.LoanAmount.mean())

print(cr.Dependents.value_counts()) 
cr.Dependents = cr.Dependents.fillna(0)

print(cr.Gender.value_counts()) 
cr.Gender = cr.Gender.fillna("Male")

print(cr.Loan_Amount_Term.value_counts()) 
cr.Loan_Amount_Term = cr.Loan_Amount_Term.fillna(360)

cr.isnull().sum()
cr = cr.dropna()
cr.isnull().sum()
cr.shape

# encoding the categorical variables

from sklearn.preprocessing import LabelEncoder
le = LabelEncoder()

cr.Loan_Status = le.fit_transform(cr.Loan_Status)
cr.Property_Area = le.fit_transform(cr.Property_Area)
cr.Self_Employed = le.fit_transform(cr.Self_Employed) 
cr.Education = le.fit_transform(cr.Education)
cr.Married = le.fit_transform(cr.Married)
cr.Gender = le.fit_transform(cr.Gender)
cr.head()

# factorise the categorical variables

cr.Gender = cr.Gender.astype('category')
cr.Married = cr.Married.astype('category')
cr.Education = cr.Education.astype('category')
cr.Self_Employed = cr.Self_Employed.astype('category')
cr.Property_Area = cr.Property_Area.astype('category')
cr.Credit_History = cr.Credit_History.astype('category')
cr.Loan_Status = cr.Loan_Status.astype('category')
cr.describe(include = 'all')

# selecting x and y variables

cr.shape

cr_x = cr.iloc[:,0:11]

cr_y = cr.iloc[:,-1]

# training and testing

import sklearn
from sklearn.model_selection import train_test_split
cr_x_train, cr_x_test, cr_y_train, cr_y_test = train_test_split(cr_x, cr_y, test_size = 0.2, random_state = 101)

# build naive bayes on train data

from sklearn.naive_bayes import MultinomialNB
naive_bayes = MultinomialNB()
naive_bayes.fit(cr_x_train, cr_y_train)

# predict on test data

predicted = naive_bayes.predict(cr_x_test)
predicted

# confusion matrix

from sklearn.metrics import confusion_matrix
tab = confusion_matrix(predicted, cr_y_test)
tab

# accuracy 

acc = tab.diagonal().sum()/tab.sum()
acc

# score

score = naive_bayes.score(cr_x_test, cr_y_test)
score

#------------------------------------------------------------ Clustering --------------------------------------------------------


#------------ K-Means --------------------

import pandas as pd
ctg = pd.read_csv("file:///C:/Users/prafulla/Desktop/Whatsapp/CTG.csv")
ctg.head()
ctg.shape

ctg_x = ctg.iloc[:,0:3]
ctg_y = ctg.iloc[:,3]
ctg_y.head()

# fit kmean ctg_x data

from sklearn.cluster import KMeans
kmeans = KMeans(n_clusters =3)
kmeans.fit(ctg_x)

kmeans.cluster_centers_

kmeans.labels_

kmeans.fit(ctg_x).score(ctg_x)

nc = range(1,6)
nc

kmeans = [KMeans(n_clusters = i) for i in nc]
kmeans

score = [kmeans[i].fit(ctg_x).score(ctg_x) for i in range(len(kmeans))]
score

import matplotlib.pyplot as plt
plt.plot(nc, score)
plt.show()

import numpy as np
aa = np.absolute(score)
aa

plt.plot(nc, aa, marker='*')
plt.show()

#------------- DB- Scan -------------

ctg = pd.read_csv("file:///C:/Users/prafulla/Desktop/Whatsapp/CTG.csv")
ctg_x = ctg.iloc[:,0:3]

# build dbscan on ctg_x data

from sklearn.cluster import DBSCAN
from sklearn.preprocessing import StandardScaler
scaler = StandardScaler()
scaled_ctg = scaler.fit_transform(ctg_x)
dbscan = DBSCAN(eps = .3, min_samples = 5)
model_db = dbscan.fit(scaled_ctg)
aa = list(model_db.labels_)
set(model_db.labels_)

#------------ PCA --------------------

from sklearn import decomposition
from sklearn.decomposition import PCA
pca = decomposition.PCA()

from sklearn.preprocessing import StandardScaler
scaler = StandardScaler()
scaler.fit(ctg)
scaled_ctg = scaler.transform(ctg)
pca = pca.fit(scaled_ctg)
pca = pca.transform(scaled_ctg) 
pca
pca.explained_variance_ratio_

#------------------------------------------------------------ Feature selection --------------------------------------------------------


# import data
import pandas as pd
cr = pd.read_csv("file:///C:/Users/prafulla/Desktop/Whatsapp/CreditRisk.csv")
cr.head()
cr.shape

# remove id column

cr = cr.iloc[:,1:13]
cr.shape
cr.head()

# dealing with nulls

cr.isnull().sum()

print(cr.Credit_History.value_counts())
cr.Credit_History = cr.Credit_History.fillna(1)

print(cr.Self_Employed.value_counts())
cr.Self_Employed = cr.Self_Employed.fillna("No")

cr.LoanAmount  = cr.LoanAmount.fillna(cr.LoanAmount.mean())

print(cr.Dependents.value_counts()) 
cr.Dependents = cr.Dependents.fillna(0)

print(cr.Gender.value_counts()) 
cr.Gender = cr.Gender.fillna("Male")

print(cr.Loan_Amount_Term.value_counts()) 
cr.Loan_Amount_Term = cr.Loan_Amount_Term.fillna(360)

cr.isnull().sum()
cr = cr.dropna()
cr.isnull().sum()
cr.shape

# encoding the categorical variables

from sklearn.preprocessing import LabelEncoder
le = LabelEncoder()

cr.Loan_Status = le.fit_transform(cr.Loan_Status)
cr.Property_Area = le.fit_transform(cr.Property_Area)
cr.Self_Employed = le.fit_transform(cr.Self_Employed) 
cr.Education = le.fit_transform(cr.Education)
cr.Married = le.fit_transform(cr.Married)
cr.Gender = le.fit_transform(cr.Gender)
cr.head()

# factorise the categorical variables

cr.Gender = cr.Gender.astype('category')
cr.Married = cr.Married.astype('category')
cr.Education = cr.Education.astype('category')
cr.Self_Employed = cr.Self_Employed.astype('category')
cr.Property_Area = cr.Property_Area.astype('category')
cr.Credit_History = cr.Credit_History.astype('category')
cr.Loan_Status = cr.Loan_Status.astype('category')
cr.describe(include = 'all')

# selecting x and y variables

cr.shape

cr_x = cr.iloc[:,0:11]

cr_y = cr.iloc[:,-1]


# feature selection using rfe

import pandas as pd
from sklearn.feature_selection import RFE
from sklearn.svm import LinearSVC
svm = LinearSVC()
rfe = RFE(svm, 5)
rfe.fit(cr_x, cr_y)
rfe.transform(cr_x)
rfe.get_support()

imp_variables = pd.DataFrame({"Important": list(rfe.get_support()), "Feature_Name": list(cr_x.columns)})
imp_variables

# feature selection using variance threshold

from sklearn.feature_selection import VarianceThreshold
from sklearn.feature_selection import SelectFromModel
from sklearn.ensemble import RandomForestClassifier
from sklearn.feature_selection import SelectKBest
from sklearn.feature_selection import chi2

select = SelectFromModel(RandomForestClassifier(n_estimators = 100 ))
select.fit(cr_x, cr_y)
select.transform(cr_x)
select.get_support()

imp_variables = pd.DataFrame({"Important": list(select.get_support()), "Feature_name": list(cr_x.columns)})
imp_variables

# feature selection using chi sqr

chi2 = SelectKBest(score_func = chi2, k = 'all')
chi2.fit(cr_x, cr_y)
select.transform(cr_x)
select.get_support()

imp_variables = pd.DataFrame({"Import": list(select.get_support()), "Feature_name": list(cr_x.columns)})
imp_variables


# feature selection using boruta

from sklearn.ensemble import RandomForestClassifier
from boruta import BorutaPy
import numpy as np
rfc = RandomForestClassifier()

boruta_feature_selector = BorutaPy(rf, random_statae = 111, max_iter = 50, perc = 100, verbose=2)

cr.xx = np.array(cr_x)
cr.yy = np.array(cr_y)
boruta_feature_selector.fit(cr_xx, cr_yy)
boruta_feature_selector.support_
imp_variables = pd.DataFrame({"Features": list(boruta_feature_selector.support_), "columns":list(cr_x.columns)})
imp_variables

#------------------------------------------------------------ ROC --------------------------------------------------------

# import data
import pandas as pd
cr = pd.read_csv("file:///C:/Users/prafulla/Desktop/Whatsapp/CreditRisk.csv")
cr.head()
cr.shape

# remove id column

cr = cr.iloc[:,1:13]
cr.shape
cr.head()

# dealing with nulls

cr.isnull().sum()

print(cr.Credit_History.value_counts())
cr.Credit_History = cr.Credit_History.fillna(1)

print(cr.Self_Employed.value_counts())
cr.Self_Employed = cr.Self_Employed.fillna("No")

cr.LoanAmount  = cr.LoanAmount.fillna(cr.LoanAmount.mean())

print(cr.Dependents.value_counts()) 
cr.Dependents = cr.Dependents.fillna(0)

print(cr.Gender.value_counts()) 
cr.Gender = cr.Gender.fillna("Male")

print(cr.Loan_Amount_Term.value_counts()) 
cr.Loan_Amount_Term = cr.Loan_Amount_Term.fillna(360)

cr.isnull().sum()
cr = cr.dropna()
cr.isnull().sum()
cr.shape

# encoding the categorical variables

from sklearn.preprocessing import LabelEncoder
le = LabelEncoder()

cr.Loan_Status = le.fit_transform(cr.Loan_Status)
cr.Property_Area = le.fit_transform(cr.Property_Area)
cr.Self_Employed = le.fit_transform(cr.Self_Employed) 
cr.Education = le.fit_transform(cr.Education)
cr.Married = le.fit_transform(cr.Married)
cr.Gender = le.fit_transform(cr.Gender)
cr.head()

# factorise the categorical variables

cr.Gender = cr.Gender.astype('category')
cr.Married = cr.Married.astype('category')
cr.Education = cr.Education.astype('category')
cr.Self_Employed = cr.Self_Employed.astype('category')
cr.Property_Area = cr.Property_Area.astype('category')
cr.Credit_History = cr.Credit_History.astype('category')
cr.Loan_Status = cr.Loan_Status.astype('category')
cr.describe(include = 'all')

# selecting x and y variables

cr.shape

cr_x = cr.iloc[:,0:11]

cr_y = cr.iloc[:,-1]

# training and testing

import sklearn
from sklearn.model_selection import train_test_split
cr_x_train, cr_x_test, cr_y_train, cr_y_test = train_test_split(cr_x, cr_y, test_size = 0.2, random_state = 101)

# build logistic model on train data

from sklearn.linear_model import LogisticRegression
log_model = LogisticRegression()
log_model.fit(cr_x_train, cr_y_train)

# prediction on test data

predicted = log_model.predict(cr_x_test)
predicted

# probability

probability = log_model.predict_proba(cr_x_test)
probability

from sklearn.metrics import roc_auc_score
from sklearn.metrics import roc_curve

# area under curve value
auc = roc_auc_score(cr_y_test, predicted)
auc

# plot roc curve

fpr, tpr, threshold = roc_curve(cr_y_test, probability[:,1])

import matplotlib.pyplot as plt

plt.plot(fpr, tpr, label = "LogRegModel(Area = %.2f)"% auc, xlabel = "FPR")
plt.xlabel('FPR')
plt.ylabel('TPR')
plt.legend(loc = "upper left")
plt.title("AUROC CURVE")
plt.show()

#------------------------------------------------------------ Numpy --------------------------------------------------------


import numpy as np
list1 = [11,222,333]
list1
type(list1)

# convert list into array

array1 = np.array(list1)
type(array1)

list2 = [[7,8,9,],[11,22,33],[10,20,30]]
array2 = np.array(list2)
array2
array2.shape

# create sequence of 1 to 20

a = np.arange(0,21)
a

# generate table of 3

b = np.arange(3,31,3)
b

# creating 100 random numbers between 1 to 10

c = np.linspace(1,10,100)
c

# createing two matrox of rand numbers with 3 rows and four columns
d = np.random.rand(2,3,4)
d

# creating the 10 random integers between 1 to 50

e = np.random.randint(1,50,10)
e

array3 = np.array([45,4,56,87,85,52,36,89,54,23,78,36])
array3
array3.shape

array4 = array3.reshape(3,4)
array4
array4.shape

array4.max()
array4.min()

import pandas as pd

cr = pd.read_csv("file:///C:/Users/prafulla/Desktop/Whatsapp/CreditRisk.csv")

# find the unique values of categoriacal variable from the dataframe

np.unique(cr.Loan_Status)
np.unique(cr.Property_Area)

num1 =-7
np.absolute(num1)

# find the square and square root

print(np.square(6))
print(np.sqrt(36))

# find the standard deviation

sd = np.std(cr.ApplicantIncome)
sd

#  adding two numbers

np.add(4,8)

# generate the 1000 random numbers from normal distribution with mean 5 and sd .4

normal_dis = np.random.normal(5,.4,1000)
normal_dis
len(normal_dis)
normal_dis.mean()
normal_dis.std()

# plot the histogram of normal dist

import matplotlib.pyplot as plt

plt.hist(normal_dis)
plt.show()


#-------- math function------------

import math

math.factorial(5)

math.fabs(-5)  # absolute value

math.floor(4.9) # largest integer less than 4.9

math.ceil(4.9) # smallest integer which greater than 4.9

math.fmod(5,2) # modulus (reminder)

math.exp(5)  # e power(^) 5

math.log10(100) # log of 100 to the base 10

# or

math.log(100,10)

#------------------------------------------------------------ Loops--------------------------------------------------------


# ------------------- if statement ---------------------

i = 1
if i <= 10:
    print("value of i is",i)
else:
    print("value of i is greater than 10")
    
#---------------- nested / if else statement ----------
    
i = 9
if i < 10:
    print("value of i is less than of 10")
elif i == 10:
    print("value of is 10")
else:
    print("value of i is greater than 10")
    
#-------------------- for loop ------------------------
    
list = [1,2,3,4,5,6,7,8,9,10]
for j in list:
    if j % 2 == 0:
        print("its a even number: ",j)
    else:
        print("its a odd number: ",j)
        
#-------------------- while loop ------------------------
        
n = 0
while n <= 10:
    print("value of n is: ", n)
    n = n+1
    if n > 5:
        break
    
# ----------------user defined function ------------

def add_num(a,b):
    c = a + b
    print(c)
    
add_num(5,8)






















































