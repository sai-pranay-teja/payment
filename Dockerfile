FROM python:3.7
RUN mkdir /app
WORKDIR /app
COPY payment.ini payment.py rabbitmq.py requrements.txt /app/
RUN pip3.6 install -r requirements.txt
COPY docker/run.sh .
ENTRYPOINT [ "bash", "run.sh" ]