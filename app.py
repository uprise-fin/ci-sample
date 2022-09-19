from flask import Flask
from os import getenv

app = Flask(__name__)


@app.route("/", methods=["GET"])
def root():
    return "Hello World! - from Flask"

@app.route("/env", methods=["GET"])
def loadenv():
    return getenv("ENV", "NONE")


if __name__ == "__main__":
    app.run(host="0.0.0.0")
