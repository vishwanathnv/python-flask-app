FROM python:3-alpine

WORKDIR	/app

RUN python3 -m venv venv

ENV VIRTUAL_ENV=/app/venv

ENV PATH="$VIRTUAL_ENV/bin:$PATH"

COPY requirements.txt /app

COPY . .

RUN pip3 install -r requirements.txt

EXPOSE 8000

CMD ["python3", "app.py"]
