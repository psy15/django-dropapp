# django-dropapp
### Installation
#### 1. Clone git repository
```bash
git clone "https://github.com/psy15/django-dropapp.git"
```

#### 2. Install requirements
```bash
cd django-dropapp/
pip install -r requirements.txt
```

#### 3. Load sample data into MySQL
# open mysql bash
mysql -u <mysql-user> -p

# Give the absolute path of the file
mysql> source ~/app/countryy.sql
mysql> exit;


#### 4. Edit project settings
```bash
# open settings file in config

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

# save the file
```

#### 5. Run the server
```bash
# Make migrations
python manage.py makemigrations
python manage.py migrate

# Run the server
python manage.py runserver
```
