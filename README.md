# docker-instagram-scraper

Docker image with `instagram-scraper` in it. See [rarcega/instagram-scraper](https://github.com/rarcega/instagram-scraper) for more info.

## Usage

Create the file `ig_args.txt` with the arguments you want to pass to instagram-scraper, e.g. your login information to allow stories and private accounts being downloaded like so:

```
-u=user
-p=s3cr3t
```

Create the file `ig_users.txt` with a list of users you want to scrape:

```
username1
username2
username3
```

_The usernames may be separated by newlines, commas, semicolons, or whitespace._

Then simply run a new container:

```
docker run -it \
    -v $(pwd)/download:/download \
    -v $(pwd)/ig_args.txt:/ig_args.txt \
    -v $(pwd)/ig_users.txt:/ig_users.txt \
    shyd/instagram-scraper
```

All media will then be downloaded to `./download/<username>`.
