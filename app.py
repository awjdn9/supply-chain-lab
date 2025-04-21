import platform

def main():
    """A simple application that prints a message and system info."""
    print("Hello from the simple supply chain lab application!")
    print(f"Running on Python version: {platform.python_version()}")
    print(f"Operating System: {platform.system()} {platform.release()}")

if __name__ == "__main__":
    main()
