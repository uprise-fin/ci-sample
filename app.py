from flask import Flask

app = Flask(__name__)


@app.route("/", methods=["GET"])
def root():
    return "Hello World! - from Flask"


if __name__ == "__main__":
    app.run(host="0.0.0.0")
