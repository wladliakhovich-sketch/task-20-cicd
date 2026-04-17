\# Task 14 - NGINX Docker Project

## 📌 Описание проекта
Данный проект демонстрирует работу веб-сервера NGINX внутри Docker-контейнера.

Контейнер настроен для:
- отдачи HTML страницы
- раздачи изображений
- раздачи музыкальных файлов
- выполнения редиректа
- проксирования запросов на другой контейнер (backend)

Проект реализован с использованием:
- Dockerfile
- Docker Compose
- конфигурации NGINX
- Docker Hub

---

## 📁 Структура проекта

```text
task14-nginx-docker/
├── Dockerfile
├── docker-compose.yml
├── README.md
├── nginx/
│   └── default.conf
├── html/
│   └── index.html
├── images/
│   ├── grogu.jpg
│   ├── hyperjump.jpg
│   └── trooper.jpg
├── music/
│   └── Star_Wars_Cantina_Theme_Song.mp3
└── app/
    ├── Dockerfile
    └── index.html




## Run using Docker image

Pull image:

docker pull waldis2235/task14-nginx:latest

Run container:

docker run -d -p 8080:80 waldis2235/task14-nginx:latest

Open in browser:

http://localhost:8080/
http://localhost:8080/images/
http://localhost:8080/music/
http://localhost:8080/redirect
http://localhost:8080/app/

Notes:
- The image runs standalone without docker-compose
- /app returns a placeholder message in standalone mode
- Full reverse proxy functionality is available in docker-compose mode
trigger workflow again
final pipeline test
