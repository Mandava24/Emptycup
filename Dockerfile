# Use an official Python runtime as a base image
FROM python:3.10

#Set the working directory inside the container
WORKDIR /Users/HAI/Downloads/empty_cup_project-main

#Install any dependencies
COPY requirements.txt .

#Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

#set environment variables for the application ports
# ENV APP_PORT=5500
# ENV DATA_PORT=5000

#Copy the local code to the container
COPY . .

#expose the port your app runs on 
# EXPOSE $APP_PORT $DATA_PORT
EXPOSE 5500

#Define the command to run your app
CMD ["python", "nothing.py"]