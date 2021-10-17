FROM python:3
COPY app.py /opt/personal-cv/app.py
COPY static /opt/personal-cv/static 
COPY templates /opt/personal-cv/templates
RUN pip install flask
ENTRYPOINT ["/opt/personal-cv/app.py"]
