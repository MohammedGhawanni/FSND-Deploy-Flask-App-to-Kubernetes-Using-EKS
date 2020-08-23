# Get base image
FROM python:stretch

# Set working directory inside the base image
WORKDIR /usr/app

# Copy the dependencies and the source code
COPY ./ .

# Install dependencies
RUN pip install -r ./requirements.txt

# Run the server 
CMD ["gunicorn", "-b", ":8080", "main:APP"]