resource "docker_network" "monitor_net" {
  name = "monitor_net"
}

resource "docker_container" "grafana-dev" {
  name  = "grafana-dev"
  image = "grafana/grafana:main-ubuntu"
  ports {
    internal = 3000
    external = var.grafana_port
  }
  networks_advanced {
    name = docker_network.monitor_net.name
  }
  networks_advanced {
    name = docker_network.app_net.name
  }
}
