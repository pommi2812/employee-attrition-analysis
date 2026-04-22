import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv("PROJECT\HR_EMPLOYEE_PROJECT\hr_employee.csv")

df["Department"].value_counts().plot(kind="bar")

plt.title("Employees by Department")
plt.xlabel("Department")
plt.ylabel("Count")
plt.show()
