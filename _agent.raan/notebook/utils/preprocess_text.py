# !/usr/bin/env python3.10
# -*- coding: utf-8 -*-

import string

def preprocess_text(text):
    return text.lower().translate(str.maketrans('', '', string.punctuation))
