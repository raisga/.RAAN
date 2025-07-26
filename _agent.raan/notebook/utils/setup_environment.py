# !/usr/bin/env python3.10
# -*- coding: utf-8 -*-

from IPython.display import clear_output
from utils.load_requirements import load_requirements
from utils.install_and_import import install_and_import
from utils.print_setup_status import print_setup_status

def setup_environment():
    """
    Sets up the environment by installing required packages and printing the setup status.
    """

    required = load_requirements('./requirements.txt')
    for pkg in required:
        install_and_import(pkg)
        clear_output(wait=True)
    print_setup_status(pkg_list=required)
    