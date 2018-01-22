FROM python:alpine

RUN pip install instagram-scraper==1.5.18

RUN mkdir /download

WORKDIR /download

CMD instagram-scraper @/ig_args.txt -f /ig_users.txt
