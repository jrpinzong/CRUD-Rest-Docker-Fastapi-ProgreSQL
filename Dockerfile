FROM python:3.9

WORKDIR /usr/src/app
COPY . /usr/src/app/

RUN pip install --no-cache-dir --upgrade -r /usr/src/app/requirements.txt

CMD ["uvicorn" , "main:app" , "--host" , "0.0.0.0" , "--port" , "8000", "--reload"]