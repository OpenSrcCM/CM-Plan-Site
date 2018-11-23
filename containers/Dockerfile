# Use an official Python runtime as a parent image
FROM python:2.7-slim

# If behind a proxy server, replace host:port with values for your servers
#ENV http_proxy HomeOffice:80
#ENV https_proxy HomeOffice:22
# For home setup /etc/docker/daemon.json with "your_dns_address" set to
# 2001:558:feed::
# For work setup /etc/docker/daemon.json with "your_dns_address" set to
# ???:???:???:???:

# Set the working directory to /containers
WORKDIR /containers

# Copy the current directory contents into the container at /con
COPY . /containers

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["python", "app.py"]
