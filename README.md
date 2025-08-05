
## 🚀 Django + React + PostgreSQL + Docker + Nginx

Welcome to a complete **production-ready** full stack template! This project combines powerful technologies to provide a seamless developer experience and robust architecture.

---

### ✨ Features
- 🔐 **User Authentication** with Django REST Framework
- 🗂️ **RESTful API Endpoints** for core functionality
- ⚡ **Token-Based Authentication**
- 🐘 **PostgreSQL Database Integration** (via Docker)
- ⚙️ **Environment Variable Support** using `.env`
- 🎨 **React Frontend SPA**
- 🌐 **Nginx Reverse Proxy** for production-ready routing
- 🐳 **Dockerized Deployment** with one command

---

### 🗂️ Project Structure
```
project-root/
├── backend/               # Django project with Docker setup
│   ├── api/               # REST API endpoints
│   ├── Dockerfile
│   ├── entrypoint.sh
│   ├── .env
│   ├── .dockerignore
│   └── requirements.txt
├── frontend/              # React app with Docker setup
│   ├── Dockerfile
│   ├── .dockerignore
│   └── package.json
├── nginx/                 # Nginx reverse proxy config
│   └── nginx.conf
├── docker-compose.yml     # Defines all services
├── Makefile               # Shortcut commands
└── README.md
```

---

### ⚙️ Prerequisites
- ✅ [Docker](https://www.docker.com/get-started)
- ✅ [Docker Compose](https://docs.docker.com/compose/)
- ✅ Python 3.11+ (for local dev without Docker)

---

### 🛠️ Local Development (without Docker)
1. Clone the repo and go to backend:
```bash
git clone https://github.com/your-username/your-repo-name.git
cd your-repo-name/backend
```
2. Create virtual environment & install dependencies:
```bash
python -m venv env
source env/bin/activate  # Windows: env\Scripts\activate
pip install -r requirements.txt
```
3. Run migrations & start server:
```bash
python manage.py migrate
python manage.py runserver
```

---

### 🚀 Docker Deployment

1. **Start all containers**
```bash
make up
```

2. **Create Django superuser**
```bash
make createsuperuser
```

3. **Visit in browser**
- 🌐 Frontend: [http://localhost](http://localhost)
- 🧩 API: [http://localhost/api/](http://localhost/api/)
- 🔐 Admin: [http://localhost/api/admin/](http://localhost/api/admin/)

---

### 🔐 Environment Variables (`backend/.env`)
```ini
DEBUG=0
SECRET_KEY=your-secret-key
DATABASE_NAME=django_db
DATABASE_USER=django
DATABASE_PASSWORD=django
DATABASE_HOST=db
DATABASE_PORT=5432
```

---

### ⚡ Makefile Commands
```bash
make up               # 🔼 Start all services
make down             # 🔽 Stop everything
make logs             # 📜 Stream logs
make ps               # 🔍 Show status
make restart          # 🔁 Rebuild + restart
make migrate          # 🧬 Run DB migrations
make createsuperuser  # 👤 Django admin user
```

---

### 🧪 Testing
Run backend tests:
```bash
```

---

### 🛠️ Built With
- 🌍 **Django 4.x** – Web backend
- ⚛️ **React 18+** – Frontend SPA
- 🐘 **PostgreSQL 15** – Relational DB
- 🐳 **Docker** + **Compose** – Containerization
- 🌐 **Nginx** – Web server and reverse proxy

---

### 📄 License
MIT License. Use freely, modify boldly, contribute gladly. ✨
