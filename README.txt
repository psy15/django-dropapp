#### 1. Install requirements
cd app
pip install -r requirements.txt
```

#### 2. Load sample data into MySQL
# open mysql bash
mysql -u <mysql-user> -p

# Give the absolute path of the file
mysql> source ~/app/countryy.sql
mysql> exit;

#### 3. Edit project settings
```bash
# open settings file
cd config/settings.py

# Edit Database configurations with your MySQL configurations.
# Search for DATABASES section.
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'countryy',
        'USER': '<mysql-user>',
        'PASSWORD': '<mysql-password>',
        'HOST': '<mysql-host>',
        'PORT': '<mysql-port>',
    }
}

4.Run the server
# Make migrations
python manage.py makemigrations
python manage.py migrate

# Run the server
python manage.py runserver
