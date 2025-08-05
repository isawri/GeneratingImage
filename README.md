## 🚀 Django + React + PostgreSQL + Docker 

This template provides a **production-ready** full-stack web application using **Django**, **React**, **PostgreSQL**, **Docker**, and **Nginx**. It's designed to streamline development and deployment while ensuring a seamless experience with powerful technologies.

---

### ✨ Features
- 🔐 **User Authentication** with Django REST Framework
- 🗂️ **RESTful API Endpoints** for core functionality
- ⚡ **Token-Based Authentication**
- 🐘 **PostgreSQL Database Integration** (via Docker)
- ⚙️ **Environment Variable Support** using `.env` for secure configuration
- 🎨 **React Frontend SPA**
- 🌐 **Nginx Reverse Proxy** for production-ready routing
- 🐳 **Dockerized Deployment** for easy setup and portability

---

### 🗂️ Project Structure
project-root/
├── backend/ # Django project with Docker setup
│ ├── api/ # REST API endpoints
│ ├── Dockerfile
│ ├── entrypoint.sh
│ ├── .env # Environment variables for Django
│ ├── .dockerignore # Files to ignore when building the Docker image
│ └── requirements.txt # Python dependencies
├── frontend/ # React app with Docker setup
│ ├── Dockerfile # React Docker setup
│ ├── .dockerignore # React's .dockerignore file
│ └── package.json # React dependencies and scripts
├── nginx/ # Nginx reverse proxy config
│ └── nginx.conf # Nginx configuration file
├── docker-compose.yml # Defines all services for Docker
├── Makefile # Shortcut commands for development tasks
└── README.md # Project documentation

yaml
Copy

---

### ⚙️ Prerequisites
Before starting the project, make sure you have the following installed:

- ✅ [Docker](https://www.docker.com/get-started) – For containerization
- ✅ [Docker Compose](https://docs.docker.com/compose/) – For managing multi-container Docker applications
- ✅ Python 3.11+ (for local development without Docker)

---

### 🛠️ Local Development (without Docker)
If you prefer running the project without Docker, follow these steps:

1. **Clone the repo and go to the backend folder**:
```bash
git clone https://github.com/your-username/your-repo-name.git
cd your-repo-name/backend
Create a virtual environment & install dependencies:

bash
Copy
python -m venv env
source env/bin/activate  # On Windows: env\Scripts\activate
pip install -r requirements.txt
Run migrations & start the Django server:

bash
Copy
python manage.py migrate
python manage.py runserver
By default, the server will be running at http://127.0.0.1:8000/.

🚀 Docker Deployment
To run your project with Docker, use the following steps:

Start all containers:

bash
Copy
make up
This command will build and run the Docker containers for both the backend, frontend, and PostgreSQL database.

Create Django superuser (admin user):

bash
Copy
make createsuperuser
Follow the prompts to create an admin user for your Django application.

Visit in browser:

🌐 Frontend: http://localhost

🧩 API: http://localhost/api/

🔐 Admin: http://localhost/api/admin/

You should now be able to interact with your project locally through these URLs.

🔐 Environment Variables (backend/.env)
This file contains important configuration settings for your Django application. Create your own .env file inside the backend/ folder with the following content:

ini
Copy
DEBUG=0
SECRET_KEY=your-secret-key
DATABASE_NAME=django_db
DATABASE_USER=django
DATABASE_PASSWORD=django
DATABASE_HOST=db
DATABASE_PORT=5432
Note: Replace your-secret-key with a secure, randomly generated key.

⚡ Makefile Commands
The Makefile includes convenient shortcut commands for common tasks. Here are the available commands:

bash
Copy
make up               # 🔼 Start all services (Docker containers)
make down             # 🔽 Stop all services and containers
make logs             # 📜 Stream logs from the containers
make ps               # 🔍 Show the status of containers
make restart          # 🔁 Rebuild and restart the containers
make migrate          # 🧬 Run DB migrations in the Django container
make createsuperuser  # 👤 Create a Django admin user
🧪 Testing
You can run the backend tests using the Django testing framework.

To run the tests:

bash
Copy
python manage.py test
🛠️ Built With
This project uses the following technologies:

🌍 Django 4.x – Web backend framework

⚛️ React 18+ – Frontend Single Page Application (SPA)

🐘 PostgreSQL 15 – Relational Database Management System (RDBMS)

🐳 Docker + Docker Compose – For containerization and multi-container orchestration

🌐 Nginx – Web server and reverse proxy

