FROM python:3.7.2-stretch

# Set the working directory to /AppPython
WORKDIR /BankNoteML

COPY . /BankNoteML

# Copy requirements.txt file in current folder into the container at /AppPython
ADD requirements.txt .

# Install the dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# listens local port: EXPOSE 5000 Flask Port Number
EXPOSE 5262:5000

# CMD: specifies the default program that will execute once the container runs.
# To Deploy with Flask we need this Line
CMD python flask_api.py
