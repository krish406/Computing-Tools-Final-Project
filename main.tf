terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "~> 4.2.0"
    }
  }
}

provider "docker" {

}

data "docker_image" "flask-project-app" {
  name = "flask-project:v1"
}

# Run the container using the built image
resource "docker_container" "flask-project-container" {
  name  = "running-flask-project-v1"
  image = data.docker_image.flask-project-app.id

  ports {
    internal = 8080
    external = 8080
  }
}