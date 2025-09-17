resource "docker_network" "app_net" {
  name = "app_net"
}

resource "docker_container" "app1" {
  name  = "app1"
  image = "nginx:stable"
  networks_advanced {
    name = docker_network.app_net.name
  }
  networks_advanced {
    name = docker_network.persistence_net.name
  }
  volumes {
    host_path      = abspath("${path.module}/../host_volumes/web/app1")
    container_path = "/usr/share/nginx/html"
  }
}

resource "docker_container" "app2" {
  name  = "app2"
  image = "nginx:stable"
  networks_advanced {
    name = docker_network.app_net.name
  }
  networks_advanced {
    name = docker_network.persistence_net.name
  }
  volumes {
    host_path      = abspath("${path.module}/../host_volumes/web/app2")
    container_path = "/usr/share/nginx/html"
  }
}

resource "docker_container" "app3" {
  name  = "app3"
  image = "nginx:stable"
  networks_advanced {
    name = docker_network.app_net.name
  }
  networks_advanced {
    name = docker_network.persistence_net.name
  }
  volumes {
    host_path      = abspath("${path.module}/../host_volumes/web/app3")
    container_path = "/usr/share/nginx/html"
  }
}
