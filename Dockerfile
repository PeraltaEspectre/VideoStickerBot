FROM linuxserver/ffmpeg

RUN pip3 install -r requirements.txt

CMD python3 bot.py
