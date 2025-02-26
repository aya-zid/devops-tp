# Use the official Python 3.9 image as the base image
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file into the container
COPY hello-devops/requirements.txt /app/requirements.txt

# Install the dependencies from the requirements.txt file
RUN pip install --no-cache-dir -r /app/requirements.txt

# Copy the rest of the Flask application code into the container
COPY hello-devops/ /app/

# Specify the command to run the app
CMD ["python", "app.py"]
