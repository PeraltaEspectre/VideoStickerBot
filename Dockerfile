FROM linuxserver/ffmpeg


RUN apt -qq update --fix-missing && \
    apt -qq install -y git \
    aria2 \
    wget \
    curl \
    tar \
    python3 \
    ffmpeg \
    python3-pip \


COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt
COPY . .
RUN chmod +x extract
CMD python3 bot.py
