terraform {
  required_providers {
    kubernetes = {
      source  = "registry.terraform.io/hashicorp/kubernetes"
      version = "2.11.0"
    }
  }
}

provider "kubernetes" {
  config_path = "/root/.kube/config"
}
