# !/usr/bin/env python3.10
# -*- coding: utf-8 -*-

import sys
import subprocess
import importlib

def install_and_import(package):
    """
    Install and import a package, suppressing output during installation.
    If the package is already installed, it will simply import it.
    """
    
    try:
        importlib.import_module(package)
    except ImportError:
        print(f"Installing {package}...")
        subprocess.check_call([sys.executable, "-m", "pip", "install", package])