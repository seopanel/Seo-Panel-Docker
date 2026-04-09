# Seo-Panel-Docker
Seo Panel Docker


## Seo Panel Docker Image Build Steps

1) Download latest version of seo panel from following link

https://www.seopanel.org/download/

2) Unzip the file and copy seopanel directory to Seo-Panel-Docker folder

3) Execute following command

`make`

It will create latest seo panel docker image.


## Install Seo Panel Using Docker

### Prerequisites
- [Docker](https://docs.docker.com/get-docker/) installed
- [Docker Compose](https://docs.docker.com/compose/install/) installed

### Steps

1) Clone or download this repository

```bash
git clone https://github.com/seopanel/Seo-Panel-Docker.git
cd Seo-Panel-Docker
```

2) Create a `.env` file from the sample

```bash
cp sample_env .env
```

3) Edit `.env` and set your desired credentials

```
MYSQL_DB_HOST=db
MYSQL_DATABASE=seopanel
MYSQL_USER=seopanel
MYSQL_PASSWORD=your_password
MYSQL_ROOT_PASSWORD=your_root_password
```

4) Start the containers

```bash
docker-compose up -d
```

5) Open your browser and go to `http://localhost`

6) Follow the on-screen Seo Panel installation wizard. Use the database credentials from your `.env` file:
   - **DB Host:** `db`
   - **DB Name:** `seopanel`
   - **DB User:** `seopanel`
   - **DB Password:** *(as set in .env)*

### Stop / Start

```bash
# Stop containers
docker-compose down

# Start again
docker-compose up -d
```

### Pull Pre-built Image from Docker Hub

Instead of building locally, you can pull the pre-built image directly:

```bash
docker pull seopanel/seopanel:6.0.0
docker-compose up -d
```
