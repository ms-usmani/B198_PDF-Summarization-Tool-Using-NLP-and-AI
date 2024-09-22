from flask import Flask, render_template, request
from src.extractive_summarization import extractive_summary
from src.abstractive_summarization import abstractive_summary

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/summarize', methods=['POST'])
def summarize():
    text = request.form['text']
    summary_type = request.form['summary_type']
    if summary_type == 'extractive':
        summary = extractive_summary(text)
    elif summary_type == 'abstractive':
        summary = abstractive_summary(text)
    else:
        summary = "Invalid summary type selected."
    return render_template('index.html', summary=summary)

if __name__ == '__main__':
    app.run(debug=True)