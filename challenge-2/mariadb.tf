resource "docker_container" "mariadb" {
  name = "db"
  image = "mariadb:challenge"
  host {
    host = "db"
    ip = "0.0.0.0"
  }
  ports {
    internal = "3306"
    external = "3306"
    ip = "0.0.0.0"
  }
  labels {
    challenge = "second"
  }
  env {
    MYSQL_ROOT_PASSWORD = 1234
    MYSQL_DATABASE = "simple-website"
  }
  volumes {
    container_path = "/var/lib/mysql"
    volume_name = "mariadb-volume"
  }
}