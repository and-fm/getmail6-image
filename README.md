# getmail6 docker image

This is a prebuilt docker image for getmail6, published daily automatically.

## Usage

`ghcr.io/and-fm/getmail6:latest`

### Docker Compose Example

```yaml
version: "3.9"
services:
  getmail:
    image: ghcr.io/and-fm/getmail6:latest
    volumes:
      - ./getmail:/getmail
    command: ["getmail", "--getmaildir=/getmail", "--rcfile=getmailrc"]
```
