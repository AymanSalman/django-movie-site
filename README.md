# MovieProject

This is a Django-based project where users can view a list of movies, see detailed information about each movie, and leave comments. 
Only registered users can add comments, while guest users can view comments and movie details.

## Features

- **Admin Role**: Only the admin can create and manage the movie list.
- **Registered Users**: Logged-in users can add comments on movie pages.
- **Guest Users**: Guests can view the movie list, movie details, and existing comments, but cannot add comments without registering.

## Requirements for Docker Setup

Before you proceed with running the project via Docker, ensure that you have the following installed:

- [Docker Desktop](https://www.docker.com/products/docker-desktop/) installed on your machine.
- PowerShell, which is available by default on most Windows systems.

## Installation

### First Option: Running the Project Locally

1. **Navigate to the location where you want to clone the project(example directory: Desktop)**:
    ```bash
    cd C:\Users\USER\Desktop
    ```

2. **Clone the repository**:
    ```bash
    git clone https://github.com/AymanSalman/django-movie-site.git
    cd django-movie-site
    ```

3. **Set up a virtual environment**:
    ```bash
    python -m venv venv
    source venv/bin/activate   # On Windows use: venv\Scripts\activate
    ```

4. **Install the required dependencies**:
    Ensure you have the `requirements.txt` file in the project root directory. Then, run:
    ```bash
    cd djangomovie
    pip install -r requirements.txt
    ```

5. **Run the server**:
    ```bash
    python manage.py runserver
    ```

6. **Access the project**:
    Open your web browser and navigate to:
    ```
    http://127.0.0.1:8000
    ```

#### Remove the Virtual Environment (Optional)

After finishing the project, you can remove the virtual environment to free up space.

1. **Deactivate the virtual environment**:
    Run this command to deactivate the environment:
    ```bash
    cd ..
    source venv/bin/deactivate    # On Windows use: venv\Scripts\deactivate
    ```

2. **Remove the virtual environment**:
    Navigate to the `venv` directory and remove it:
    ```bash
    rm -rf venv   # On Windows use: rmdir /s /q venv
    ```

---

### Running the Project via Docker Compose (Using CMD)

Follow these steps to run the project using Docker via CMD:

1. **Navigate to the location where you want to clone the project(example directory: Desktop)**:
    ```bash
    cd C:\Users\USER\Desktop
    ```

2. **Clone the repository**:
    ```bash
    git clone https://github.com/AymanSalman/django-movie-site.git
    cd django-movie-site
    ```

3. **Install the required dependencies**:
    Ensure you are in the `docker-compose.yaml` file in the project directory (use 'cd' command). Then, run:
    ```bash
    docker compose up --build
    ```

4. **Access the project in your web browser**:
    Open your browser and navigate to:
    ```
    http://127.0.0.1:8000
    ```

#### Remove the Docker Containers and Image (Optional)

After finishing with the project, you can remove the Docker container and images to free up space.

1. **To Stop and Remove All Containers in a Docker Compose Project**:
    ```bash
    docker compose down
    ```

2. **To Remove containers and associated volumes**:
    ```bash
    docker compose down --volumes
    ```

3. **To Remove containers, volumes, and images created by 'docker compose up'**:
    ```bash
    docker compose down --volumes --rmi all
    ```

---

## How to Use

- **Sign Up**: Register for an account to add comments to any movie page.
- **Login**: If you already have an account, log in to leave comments.
- **Explore**: Browse the list of movies, view details, and read comments from other users.
