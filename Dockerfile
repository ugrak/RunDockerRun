FROM python:3.11-slim
LABEL author=seabearyak
EXPOSE 8000
WORKDIR /home/app
COPY hyper-app/main.py main.py
COPY hyper-app/requirements.txt requirements.txt
RUN pip install -r requirements.txt
ENTRYPOINT ["python3", "main.py"]
