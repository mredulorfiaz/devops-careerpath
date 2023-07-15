# Base image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . .

# Expose the application port
EXPOSE 5000

# Set the environment variables
ENV MONGO_HOST=mongodb \
    MONGO_PORT=27017

# Run the application
CMD [ "python", "app.py" ]
