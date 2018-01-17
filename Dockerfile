FROM python:slim-stretch

RUN pip install instagram-scraper

RUN mkdir /download

WORKDIR /download

CMD instagram-scraper @/ig_args.txt -f /ig_users.txt
