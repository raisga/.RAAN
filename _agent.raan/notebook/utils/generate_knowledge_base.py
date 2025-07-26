# !/usr/bin/env python3.10
# -*- coding: utf-8 -*-

import pandas as pd
from utils.preprocess_text import preprocess_text

def generate_knowledge_base(data):
    df = pd.DataFrame(data)    
    df["question_clean"] = df["question"].apply(preprocess_text)
    return df
