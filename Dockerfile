#Dockerfile
FROM python:3.7

#Copy files
COPY app.py /opt/personal-cv/app.py
COPY static /opt/personal-cv/static 
COPY templates /opt/personal-cv/templates

#Run server
RUN pip install flask
EXPOSE 5000
WORKDIR /opt/personal-cv/
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]