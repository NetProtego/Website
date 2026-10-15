# NetProtego — Website

Website of NetProtego, packaged as a Docker image and published to the GitHub
Container Registry on every push to `main`:

```
ghcr.io/netprotego/website:latest
```

## Run with Docker Compose

Create a `docker-compose.yaml` file:

```yaml
services:
  website:
    image: ghcr.io/netprotego/website:latest
    container_name: netprotego-website
    ports:
      - "8080:80"   # change 8080 to the host port of your choice
    restart: unless-stopped
```

Then start it:

```bash
docker compose up -d
```

The site is available at http://localhost:8080.

> If the package is private, log in first: `docker login ghcr.io`
> (username: your GitHub login, password: a personal access token with the
> `read:packages` scope).

## Build locally

```bash
docker build -t ghcr.io/netprotego/website:latest .
docker run --rm -p 8080:80 ghcr.io/netprotego/website:latest
```
