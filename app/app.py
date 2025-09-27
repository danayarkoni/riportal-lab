from flask import Flask
import os
app = Flask(__name__)

@app.route("/")
def hello():
    sha = os.getenv("GIT_SHA", "dev")
    msg = os.getenv("WELCOME_MSG", "Hello from Kubernetes!")
    return f"<h1>{msg}</h1><p>Version/Commit: {sha}</p>"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
