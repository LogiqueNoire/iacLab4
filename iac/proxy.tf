resource "docker_container" "proxy" {
  name  = "nginx_proxy"
  image = "nginx:stable-perl"

  networks_advanced {
    name = docker_network.app_net.name
  }

  ports {
    internal = 80
    external = 80
  }

  volumes {
    host_path      = abspath("${path.module}/../host_volumes/nginx_conf")
    container_path = "/etc/nginx/conf.d"
    read_only      = false
  }

}
