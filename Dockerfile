FROM python:alpine

RUN pip install instagram-scraper==1.5.23

RUN mkdir /download

WORKDIR /download

CMD instagram-scraper @/ig_args.txt -f /ig_users.txt
