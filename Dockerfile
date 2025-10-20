# Base image
FROM python:3.10-slim

# Set working directory inside container
WORKDIR /app

# Copy all files from your project to container
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port Flask runs on
EXPOSE 5000

# Command to run the app
CMD ["python", "app.py"]
