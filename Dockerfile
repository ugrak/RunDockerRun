FROM python:3.11-slim
LABEL author=seabearyak
EXPOSE 8000
WORKDIR /home/app
ADD /hyper-app /
RUN pip install -r requirements.txt
ENTRYPOINT ["python3", "main.py"]
