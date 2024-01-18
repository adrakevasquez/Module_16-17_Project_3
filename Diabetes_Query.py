# Import the dependencies.
import pandas as pd
from flask import Flask, jsonify, render_template, send_file
import matplotlib.pyplot as plt
from io import BytesIO

# Flask Setup
app = Flask(__name__)

# Load the CSV file into a DataFrame
df = pd.read_csv("C:/Users/User/Documents/Data_Bootcamp/Module_16/archive/diabetes_binary_health_indicators_BRFSS2015.csv")

# Flask Routes
@app.route("/api/v1.0/diabetes")
def get_diabetes():
    diabetes_query = df.to_dict(orient='records')
    return jsonify(diabetes_query)


if __name__ == "__main__":
    app.run(debug=True)