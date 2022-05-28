FROM python:3.8
WORKDIR /usr/app

ADD Font/ /usr/app/Font
ADD Graphics/ /usr/app/Graphics
ADD Sound/ /usr/app/Sound

COPY snake.py .
COPY requirements.txt .

RUN apt update
RUN ln -fs /usr/share/zoneinfo/Asia/Jakarta /etc/localtime
RUN DEBIAN_FRONTEND=noninteractive apt install -y tzdata
RUN apt install -y libsdl2-2.0-0
RUN pip install --no-cache-dir -r requirements.txt

CMD [ "python", "./snake.py" ]
