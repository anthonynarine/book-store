#Pull base image
FROM python:3.11.1-slim

# Set environment variables for better Python/docker behavior
ENV PIP_DISABLE_PIP_VERSION_CHECK=1 \
    PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

# Set the working directory inside the container
WORKDIR /app

#install dependencies
COPY ./requirements.txt  .
RUN pip install -r requirements.txt


#Copy pruect
COPY . .