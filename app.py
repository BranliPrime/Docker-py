from flask import Flask, render_template

app = Flask(__name__)

@app.route("/")
def home():
    return render_template("index.html")

@app.route("/contacto")
def contacto():
    return render_template("contacto.html")

@app.route("/acerca-de")
def acerca_de():
    return render_template("acerca_de.html")

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=True)

