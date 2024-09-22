# -*- coding: utf-8 -*-
"""Extractive_Summary.ipynb

Automatically generated by Colab.

Original file is located at
    https://colab.research.google.com/drive/1WjBvchzDNGddDEQUUrE331Wk2zgDZs__
"""



import sumy
from sumy.parsers.plaintext import PlaintextParser
from sumy.nlp.tokenizers import Tokenizer
from sumy.summarizers.lsa import LsaSummarizer

def extractive_summary(text, num_sentences=5):
    parser = PlaintextParser.from_string(text, Tokenizer("english"))
    summarizer = LsaSummarizer()
    summary = summarizer(parser.document, num_sentences)
    return ' '.join([str(sentence) for sentence in summary])