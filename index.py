# Import the necessary libraries
from flask import Flask, render_template, request

# Create a Flask app
app = Flask(__name__)

# Define the home page route
@app.route("/")
def home():
    # Render the home page template
    return render_template("home.html")

# Define the about page route
@app.route("/about")
def about():
    # Render the about page template
    return render_template("about.html")

# Define the contact page route
@app.route("/contact")
def contact():
    # Render the contact page template
    return render_template("contact.html")

# Define the blog page route
@app.route("/blog")
def blog():
    # Render the blog page template
    return render_template("blog.html")

# Run the app
if __name__ == "__main__":
    app.run(debug=True)
