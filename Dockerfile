FROM python:3.8
WORKDIR /usr/app

ADD Font/ /usr/app/Font
ADD Graphics/ /usr/app/Graphics
ADD Sound/ /usr/app/Sound

COPY snake.py .
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

CMD [ "python", "./snake.py" ]
