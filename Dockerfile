# Get the base image 
FROM python:3.9-slim

# Create a working directory
WORKDIR /app

# Copy all the files from current directory to the working directory 
COPY . /app

# Install the needed requirements from the requirements file 
RUN pip install -r requirements.txt

# Exposing the port, so the sservice is accessible from outside
EXPOSE 5000

# Rin the app when the docker container starts
CMD ["python","app.py"]