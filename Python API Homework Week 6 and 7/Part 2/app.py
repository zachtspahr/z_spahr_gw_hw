# 1. import Flask
from flask import Flask
import matplotlib.pyplot as plt

# 2. Create an app, being sure to pass __name__
app = Flask(__name__)

#2b Random Graph
x = [1,2,3,4,5,6]
y = [2,4,6,8,10,12]
jacoby = plt.scatter (x,y)
jacoby


# 3. Define what to do when a user hits the index route
@app.route("/")
def home():
    print("Server received request for 'Home' page...")
    return "Hello World!"


# 4. Define what to do when a user hits the /about route
@app.route("/about")
def about():
    print("Server received request for 'About' page...")
    return "Zachary Spahr, Arlington, VA"
# 5. Define what to do when a user hits the /about route

@app.route("/contact")
def contact():
    print("Server received request for 'Contact' page...")
    return "Contact me at zachtspahr@gmail.com"
@app.route("/jacoby")
def jacoby():
    print("Server received request for 'Jacoby' page...")
    return str(x[0])


if __name__ == "__main__":
    app.run(debug=True)
