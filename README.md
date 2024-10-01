# Django Movie Site

This project is a simple movie database website built using Django, where users can browse a list of movies, view details of each movie, and add comments on movies. The site also includes user authentication for logging in and signing up.

## Features
- Movie listing with details such as description, year of release, director, and main actors.
- User authentication for logging in and signing up.
- Commenting functionality (only for logged-in users).
- Simple CSS styling.

## Folder Structure
- **accounts/**: Contains user authentication functionality (login and signup).
- **assets/**: Contains the CSS file (`mystyle.css`).
- **djangomovie/**: Main project folder with settings and configurations.
- **media/**: Contains movie images.
- **movies/**: Contains movie-related views, models, and URLs.
- **templates/**: Contains HTML files for rendering views.

## Setup Instructions

### Prerequisites
- Python 3.x
- Django (Ensure you have Django installed by running: `pip install django`)
- Any browser (e.g., Chrome, Firefox)

### Steps to Run the Project

1. **Clone the repository**:
    ```bash
    git clone https://github.com/AymanSalman/django-movie-site.git
    cd django-movie-site
    ```

2. **Set up virtual environment** (optional but recommended):
    ```bash
    python -m venv venv
    source venv/bin/activate   # For MacOS/Linux
    venv\Scripts\activate      # For Windows
    ```

3. **Navigate to the main project folder**:
    ```bash
    cd movieProject/djangomovie
    ```

4. **Run migrations**:
    Before starting the server, apply the migrations to set up the database:
    ```bash
    python manage.py migrate
    ```

5. **Start the development server**:
    Run the Django development server:
    ```bash
    python manage.py runserver 8080
    ```

    This will start the server on `localhost:8080`. You can open it in your browser:
    ```
    http://localhost:8080/
    ```

6. **Media Files (Movie Thumbnails)**:
    Make sure the `media/` folder contains movie images as per the structure, so the thumbnails can be displayed correctly on the website.

### Notes
- By default, the site will run on `localhost:8080`. If you need to change the port, modify the command:
    ```bash
    python manage.py runserver 8080
    ```
    Change `8080` to any other available port.

- The current code includes basic movie management and user authentication. Future updates may include more advanced features.

### Known Issues
- Ensure the media folder structure is correct for movie thumbnails to display.
- Commenting functionality is only available for logged-in users.

## License
This project is open-source and available under the MIT License.
