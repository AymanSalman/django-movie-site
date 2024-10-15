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

#### Remove the Virtual Environment (Optional)

After finishing the project, you can remove the virtual environment to free up space.

1. **Deactivate the virtual environment**:
    Run this command to deactivate the environment:
    ```bash
    source venv/bin/deactivate    # On Windows use: venv\Scripts\deactivate
    ```

2. **Remove the virtual environment**:
    Navigate to the `venv` directory and remove it:
    ```bash
    rm -rf venv   # On Windows use: rmdir /s /q venv
    ```

---

### Running the Project via Docker (Using PowerShell)

Follow these steps to run the project using Docker in PowerShell:

1. **Create a directory for the project**:
    ```powershell
    mkdir C:\Users\USER\Desktop\django-movie-docker
    ```

2. **Navigate to the newly created folder**:
    ```powershell
    cd C:\Users\USER\Desktop\django-movie-docker
    ```

3. **Clone the repository into this folder**:
    ```powershell
    git clone https://github.com/AymanSalman/django-movie-site.git
    cd django-movie-site\djangomovie
    ```

4. **Start Docker Desktop** (if not already running):
    ```powershell
    Start-Process -NoNewWindow -FilePath "C:\Program Files\Docker\Docker\Docker Desktop.exe"
    ```

5. **Build the Docker image using the Dockerfile**:
    Make sure you are in the directory where the `Dockerfile` is located (`django-movie-site\djangomovie`). Run the following command to build the image:
    ```powershell
    docker build -t django-movie-site:v1.0 .
    ```

6. **Run the Docker container**:
    Once the image is built, run the container using the following command:
    ```powershell
    docker run -it -p 8000:8000 django-movie-site:v1.0
    ```

7. **Access the project in your web browser**:
    Open your browser and navigate to:
    ```
    http://127.0.0.1:8000
    ```

#### Remove the Docker Container and Image (Optional)

After finishing with the project, you can remove the Docker container and image to free up space.

1. **List all running containers** to find the container ID or name:
    ```powershell
    docker ps -a
    ```

2. **Stop the running container** (replace `container-id` or `container-name` with the actual container ID or name from the previous command):
    ```powershell
    docker stop <container-id>
    ```

3. **Remove the stopped container**:
    ```powershell
    docker rm <container-id>
    ```

4. **List all Docker images** to find the image name or ID:
    ```powershell
    docker images
    ```

5. **Remove the Docker image** (replace `image-id` or `image-name` with the actual image ID or name):
    ```powershell
    docker rmi <image-id>
    ```


---

## How to Use

- **Sign Up**: Register for an account to add comments to any movie page.
- **Login**: If you already have an account, log in to leave comments.
- **Explore**: Browse the list of movies, view details, and read comments from other users.
