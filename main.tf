provider "docker" {
#   Windows
  host = "tcp://localhost:2375"

#   MacOS
# host = "unix:///var/run/docker.sock"
}

resource "docker_image" "ghostie" {
    name = "ghost:latest"
}

resource "docker_container" "ghost_container" {
    name = "ghost-cont-01"
    image = "${docker_image.ghostie.latest}"
    ports {
        internal = 2368
        external = 80
    }
    depends_on = [
        docker_image.ghostie,
    ]
}

output "container_name" {
    value = docker_container.ghost_container.name
}