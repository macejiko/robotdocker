FROM ubuntu:14.04
WORKDIR /user/local
COPY requirements.txt requirements.txt
RUN apt-get update \ 
    && apt-get install -y libffi-dev libssl-dev libxml2-dev libxslt1-dev libjpeg8-dev zlib1g-dev \
    git python-pip python-tk python-dev gcc \
    && pip install -r requirements.txt && pip install robotframework-databaselibrary==0.6 


