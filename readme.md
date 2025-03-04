# WordPress Docker Environment 🚀

This repository contains a `docker-compose` configuration for running a local WordPress environment with MySQL, phpMyAdmin, and MailHog. 

## Requirements ✅
- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)

## Usage 💻

### Start Containers ▶️
```sh
docker-compose up -d
```

### Start with Image Rebuild 🔄
```sh
docker-compose up -d --build
```

### Stop Containers ⏹️
```sh
docker-compose down
```

## Services 🏢

### MySQL 🗄️️
- Accessible at `localhost:3310`
- Data is stored in `.srv/database`

### WordPress 🌍
- Accessible at `http://localhost:8000`
- WordPress files are in `.srv/wordpress`
- Theme is located in `./theme`
- Plugin is located in `./plugin`

### phpMyAdmin 📊
- Accessible at `http://localhost:8181`
- Provides access to the MySQL database

### MailHog 📧
- SMTP Server: `localhost:1025`
- Web Interface: `http://localhost:8025`

## Configuration ⚙️
To ensure proper functionality, create a `.env` file and add the following variables: 

```env
PROJECT_NAME=myproject
PLUGIN_NAME=myplugin

MYSQL_VER=latest
DB_ROOT_PASS=rootpassword
DB_USER=wpuser
DB_PASS=wppassword

WP_VER=latest
WP_DEBUG=1
WP_DB_PREFIX=wp_
```

## License 📜
This project is distributed under the [MIT License](LICENSE).

## Contributor 👨‍💻
Serhii Mykulyn - [mykulyn.com](https://mykulyn.com)

