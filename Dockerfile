FROM python:3.8-buster
RUN apt-get update && apt-get -y install ffmpeg
RUN pip install requests beautifulsoup4 lxml termcolor chardet pysocks \
                Flask Flask_BasicAuth Flask_Sockets gevent gevent_websocket 
ADD . /aniGamerPlus
WORKDIR /aniGamerPlus
ENV PYTHONUNBUFFERED=1
ENV PYTHONPATH=/aniGamerPlus
CMD ["python", "aniGamerPlus.py"]
