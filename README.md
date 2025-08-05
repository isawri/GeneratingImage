# Django Backend API

This is a Django-based backend project that provides a RESTful API. It includes user authentication and basic API endpoints.

## Features

- Django REST Framework support  
- Token-based authentication  
- SQLite database (default)  
- Environment variable support via `.env` file  

## Getting Started


### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/yourusername/your-repo-name.git
   cd your-repo-name/backend
   ```

2. Create and activate a virtual environment:

   ```bash
   python -m venv env
   source env/bin/activate  # On Windows: env\Scripts\activate
   ```

3. Install dependencies:

   ```bash
   pip install -r requirements.txt
   ```

4. Apply migrations:

   ```bash
   python manage.py migrate
   ```

5. Run the development server:

   ```bash
   python manage.py runserver
   ```

## Environment Variables

Create a `.env` file in the `backend` directory with the following content:

```ini
SECRET_KEY=your_django_secret_key
DEBUG=True
```


## Project Structure

```bash
backend/
├── api/
│   ├── admin.py
│   ├── models.py
│   ├── views.py
│   ├── serializers.py
│   ├── urls.py
│   └── ...
├── db.sqlite3
├── manage.py
├── requirements.txt
└── .env
```

