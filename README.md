# Docker PHP Setup

Đây là một Docker setup hoàn chỉnh cho PHP development với:

- **PHP 8.2-FPM**
- **Nginx**
- **MySQL 8.0**
- **phpMyAdmin**

## Cách sử dụng

### 1. Clone và setup
```bash
git clone <repository>
cd design_pattern
```

### 2. Tạo thư mục cần thiết
```bash
mkdir -p docker/nginx src
```

### 3. Chạy containers
```bash
# Build và start
docker-compose up -d --build

# Hoặc sử dụng Makefile
make build
make up
```

### 4. Truy cập ứng dụng

- **Website**: http://localhost:8000
- **phpMyAdmin**: http://localhost:8080
- **MySQL**: localhost:3307

### 5. Các lệnh hữu ích

```bash
# Xem logs
docker-compose logs -f

# Truy cập PHP container
docker-compose exec app bash

# Truy cập MySQL
docker-compose exec db mysql -u laravel_user -p

# Stop containers
docker-compose down

# Restart
docker-compose restart
```

## Cấu trúc thư mục

```
design_pattern/
├── Dockerfile
├── docker-compose.yml
├── docker/
│   └── nginx/
│       └── default.conf
├── src/
│   └── index.php
├── .env
├── Makefile
└── README.md
```

## Database Info

- **Host**: db (trong Docker network) hoặc localhost:3307 (từ máy host)
- **Database**: laravel_db
- **Username**: laravel_user
- **Password**: user_password
- **Root Password**: root_password