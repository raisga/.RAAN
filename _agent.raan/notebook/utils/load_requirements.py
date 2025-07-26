# !/usr/bin/env python3.10
# -*- coding: utf-8 -*-

def load_requirements(file_path):
    with open(file_path, 'r') as file:
        return file.read().strip().splitlines()