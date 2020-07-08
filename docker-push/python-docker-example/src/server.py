from flask import Flask
import os

# the all-important app variable:
app = Flask(__name__)

url = os.getenv('API_URL')

@app.route("/")
def hello():
    return "Hello World from Nidhi - "+url

if __name__ == "__main__":
        app.config['TEMPLATES_AUTO_RELOAD'] = True
        app.run(host='0.0.0.0', debug=True, port=80)
