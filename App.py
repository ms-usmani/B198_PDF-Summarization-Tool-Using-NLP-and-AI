from flask import Flask, render_template, request
from src.extractive_summary import extractive_summary
from src.abstractive_summary import abstractive_summary
from src.text_extractor import extract_text_from_pdf
from src.pre_processing import preprocess_text
from src.fetch_article import fetch_article_text

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('awe.html')

@app.route('/summarize', methods=['POST'])
def summarize():
    object_type = request.form['object_type']
    if object_type == 'PDF':
        pdf_file = request.files['pdf_file']
        text = extract_text_from_pdf(pdf_file)
        summary_type = request.form['summary_type']
        if summary_type == 'extractive':
            summary = extractive_summary(text)
        elif summary_type == 'abstractive':
            summary = abstractive_summary(text)
        else:
            summary = "Invalid summary type selected."
        return render_template('awe.html', summary=summary)
    elif object_type == 'URL':
        URL = request.form['url']
        text = fetch_article_text(URL)
        summary_type = request.form['summary_type']
        if summary_type == 'extractive':
            summary = extractive_summary(text)
        elif summary_type == 'abstractive':
            summary = abstractive_summary(text)
        else:
            summary = "Invalid summary type selected."
        return render_template('awe.html', summary=summary)



if __name__ == '__main__':
    app.run(debug=True)