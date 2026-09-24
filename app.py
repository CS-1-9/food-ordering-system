import mysql.connector
from flask import Flask,render_template,request

app = Flask(__name__)
db = mysql.connector.connect(
    host ="localhost",
    user ="root",
    password ="#Chandan@25",
    database = "food_ordering",
)

#crud
#reading data
@app.route("/")
def food():
    curser = db.cursor()
    curser.execute("SELECT * FROM foods")
    data = curser.fetchall()
    curser.close()
    return render_template("foods.html", foods=data)
    pass

#adding data
@app.route("/add",methods=["POST"])
def add():
    pass

#updating data
@app.route("/edit")
def edit_food():
    pass

#deleting data
@app.route("/delete")
def delete_food():
    pass

if __name__ == "__main__":
    app.run(debug=True)