# Specifies a slim version of Python 3.9 as the base image of the container
# Uses specific version for reproducibility
FROM python:3.9-slim-buster

# Set the working directory in the container to /app
WORKDIR /app

# Copy the application code and requirements file from local machine into container
COPY app.py requirements.txt /app/

# Install any dependencies (there are none for this simple app)
# This command runs in /app during build process
RUN pip install --no-cache-dir -r requirements.txt

# Command to run the application when the container starts
# I.e. uses python interpreter to run our app.py script
CMD ["python", "app.py"]