
# Use an official Python runtime as the base image
FROM python:3.11-alpine

# Set the working directory in the container
WORKDIR /app/

# Copy the current directory contents into the container
COPY book_catalog/requirements.txt .

# Install required packages from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY /book_catalog/ .

EXPOSE 9000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "9000"]

