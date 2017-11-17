FROM randomnerd/sibcoin
MAINTAINER serbernar <serbernar1@gmail.com>

RUN apt-get update -y
RUN apt-get install -y build-essential libsdl2-dev libsdl2-ttf-dev libpango1.0-dev \
    libgl1-mesa-dev libopenal-dev libsndfile-dev libmpg123-dev \
    libgmp-dev curl gosu
RUN apt-get autoremove -y; \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*;

RUN mkdir /data/sibcoin

COPY sibcoin.conf /etc/
COPY sibcoin.conf /root/.sibcoin/

COPY entrypoint.sh /
RUN chmod +x entrypoint.sh
ENTRYPOINT ["./entrypoint.sh"]