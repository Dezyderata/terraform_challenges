resource "docker_container" "phpmyadmin" {
  name = "db_dashboard"
  image = "phpmyadmin/phpmyadmin"
  networks_advanced {
    name = "my_network"
  }
  hostname = "phpmyadmin"
  labels {
    label = "challenge"
    value = "second"
  }
  ports {
    internal = "80"
    external = "8081"
    ip = "0.0.0.0"
  }
}
