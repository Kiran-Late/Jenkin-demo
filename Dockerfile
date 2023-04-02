FROM ubuntu	

RUN apt-get update
RUN apt-get install -y curl
RUN apt-get install -y wget
RUN apt-get install vim -y

RUN mkdir /time

COPY ./ts5sec.sh /time

RUN chmod a+x /time/ts5sec.sh

WORKDIR /time

CMD ["/time/ts5sec.sh"]

#CMD ["/time/ts5sec.sh &"]

#CMD while true; do date >> ./timestamp.txt; sleep 5; done &

#CMD ["/time/ts5sec.sh >> timestamp &"]


