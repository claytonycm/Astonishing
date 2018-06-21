from sklearn import tree
from sklearn.ensemble import RandomForestClassifier

dtc = tree.DecisionTreeClassifier()
rfc = RandomForestClassifier()

# [height, weight, shoe_size]
X = [[181, 80, 44], [177, 70, 43], [160, 60, 38], [154, 54, 37], [166, 65, 40],
     [190, 90, 47], [175, 64, 39],
     [177, 70, 40], [159, 55, 37], [171, 75, 42], [181, 85, 43]]

Y = ['male', 'male', 'female', 'female', 'male', 'male', 'female', 'female',
     'female', 'male', 'male']

# Training model with data
dtc = dtc.fit(X, Y)
rfc = rfc.fit(X, Y)

# Prediction of my personal data
prediction1 = dtc.predict([[173, 56, 42]])
prediction2 = rfc.predict([[173, 56, 42]])

print(prediction1)
print(prediction2)

#both predictions are correct