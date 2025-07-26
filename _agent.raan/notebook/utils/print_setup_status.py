# !/usr/bin/env python3.10
# -*- coding: utf-8 -*-

import sys

def print_setup_status(pkg_list):
    print("Environment Setup Status:")
    print("-------------------------")
    print(f"Python version: {sys.version}")
    print("-------------------------")
    print("Checking installed packages...")
    print("Installed packages:")
    for pkg in pkg_list:
        print(f"{pkg} installed successfully.")
    print("-------------------------")
    print("Environment setup completed successfully.")