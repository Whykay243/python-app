from flask import Flask, render_template, abort
app = Flask(__name__)

@app.route('/')
def home():
    try:
        return render_template("index.html")
    except Exception as e:
        app.logger.error(f"Error rendering template: {e}")
        abort(500)

if __name__ == "__main__":
    # Debug mode can be set to True for local development to see detailed errors
    app.run(host='0.0.0.0', port=80, debug=False)
