FROM python:3
ENV PYTHONBUFFERED=1

RUN apt-get -y update && apt-get install -y binutils
RUN mkdir /webapp
WORKDIR /webapp/
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . /webapp/

EXPOSE 5000

CMD ["./deploy/deploy_script.sh"]
