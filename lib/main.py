from flask import Flask,jsonify
from transformers import AutoTokenizer, AutoModelForSequenceClassification
import torch


app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, World!'
@app.route('/sum/<int:a>')
def sum(a):
    return jsonify({"Double":a*2})
@app.route('/aspas/<s>')
def aspas(s):
    tokenizer = AutoTokenizer.from_pretrained('nlptown/bert-base-multilingual-uncased-sentiment')

    model = AutoModelForSequenceClassification.from_pretrained('nlptown/bert-base-multilingual-uncased-sentiment')
    tokens = tokenizer.encode(s, return_tensors="pt")
    result = model(tokens)
    val = int(torch.argmax(result.logits))
    sentiment_labels = ['very negative', 'negative', 'neutral', 'positive', 'very positive']
    predicted_sentiment_label = sentiment_labels[val]
    return jsonify({
        "Sentiment":predicted_sentiment_label,
        "Value":val
    })

    

if __name__=="__main__":
    app.run(debug=True)

