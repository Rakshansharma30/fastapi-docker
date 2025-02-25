# Use official Python image based on Ubuntu
FROM python:3.10

# Set the working directory in the container
WORKDIR /app

# Copy application files
COPY main.py requirements.txt ./

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 8000
EXPOSE 8000

# Run the FastAPI server
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
