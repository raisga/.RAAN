import string

def preprocess_text(text):
    return text.lower().translate(str.maketrans('', '', string.punctuation))
