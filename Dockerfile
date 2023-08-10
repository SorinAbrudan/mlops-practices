# Use the official Python base image with a specified version
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements.txt file to the container's working directory
COPY requirements.txt .

# Install project dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the project files to the container's working directory
COPY . .

# Specify the command to run your Python application
CMD ["python", "main.py"]
