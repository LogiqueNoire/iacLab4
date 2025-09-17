resource "docker_network" "persistence_net" {
  name = "persistence_net"
}

resource "docker_container" "postgre-dev" {
  name  = "postgre-dev"
  image = "postgres:latest"
  ports {
    internal = 5432
    external = var.postgres_port
  }

  env = ["POSTGRES_PASSWORD=${var.postgres_password}"]

  networks_advanced {
    name = docker_network.persistence_net.name
  }
}

resource "docker_container" "redis-dev" {
  name  = "redis-dev"
  image = "redis:8.2.1"
  ports {
    internal = 6379
    external = var.redis_port
  }
  networks_advanced {
    name = docker_network.persistence_net.name
  }
}
