# Use the official Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy app files
COPY . .

# Run the app with Gunicorn (recommended for production)
CMD ["gunicorn", "-b", "0.0.0.0:8080", "app:app"]
