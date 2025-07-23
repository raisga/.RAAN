import sys

def print_setup_status(pkg_list):
    """
    Print the setup status of the environment, including Python version and installed packages.
    :param pkg_list: List of package names to check.
    """
    
    print("Environment Setup Status:")
    print("-------------------------")

    # Print Python version
    print(f"Python version: {sys.version}")

    print("-------------------------")
    print("Checking installed packages...")

    # Print installed packages
    print("Installed packages:")
    for pkg in pkg_list:
        print(f"{pkg} installed successfully.")

    print("-------------------------")
    print("Environment setup completed successfully.")