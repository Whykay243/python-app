FROM python:3.9-slim

WORKDIR /app

# Copy your application code and templates directory into the container
COPY app.py .
COPY templates ./templates

# Install dependencies
RUN pip install --no-cache-dir flask

# Expose port 80
EXPOSE 80

# Run the app
CMD ["python", "app.py"]
