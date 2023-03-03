FROM python:3.10

WORKDIR /mdiskdownload

COPY requirements.txt ./

RUN pip install -r requirements.txt

COPY . .

CMD ["python3", "main.py"]
