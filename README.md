# MovieProject

This is a Django-based project where users can view a list of movies, see detailed information about each movie, and leave comments. 
Only registered users can add comments, while guest users can view comments and movie details.

## Features

- **Admin Role**: Only the admin can create and manage the movie list.
- **Registered Users**: Logged-in users can add comments on movie pages.
- **Guest Users**: Guests can view the movie list, movie details, and existing comments, but cannot add comments without registering.

## Installation

Follow these steps to run the project locally:

1. **Clone the repository**:
    ```bash
    git clone https://github.com/AymanSalman/django-movie-site.git
    cd django-movie-site
    ```

2. **Set up a virtual environment**:
    ```bash
    python -m venv venv
    source venv/bin/activate   # On Windows use: venv\Scripts\activate
    ```

3. **Install the required dependencies**:
    Ensure you have the `requirements.txt` file in the project root directory. Then, run:
    ```bash
    cd djangomovie
    pip install -r requirements.txt
    ```

4. **Run the server**:
    ```bash
    python manage.py runserver
    ```

5. **Access the project**:
    Open your web browser and navigate to:
    ```
    http://127.0.0.1:8000
    ```

## Deactivating and Removing the Virtual Environment

Follow these steps to run the project locally:

1. **Deactivate the Virtual Environment**:
   When you're done working in the virtual environment, you can deactivate it by running the following command:
   ```bash
   source venv/bin/deactivate    # On Windows use: venv\Scripts\deactivate
   ```

2. **Remove the Virtual Environment**:
   Navigate to venv die and run this command:
    ```bash
    python -m venv venv
    rm -rf venv   # On Windows use: rmdir /s /q venv
    ```

## How to use

- **Sign Up**: Register for an account to add comments to any movie page.
- **Login**: If you already have an account, log in to leave comments.
- **Explore**: Browse the list of movies, view details, and read comments from other users.
