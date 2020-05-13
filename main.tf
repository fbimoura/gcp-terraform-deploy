# Provider Configure
provider "google" {
  version = "3.5.0"

  credentials = file("credentials.json") #Arquivo com credenciais de acesso ao GCP

  project = var.projeto
  region  = var.regiao
  zone = var.zona
}

resource "google_compute_instance" "server" {
  name         = var.servername
  machine_type = "f1-micro" #Modelo de hardware utilizado

  boot_disk {
    initialize_params {
      image = "centos-cloud/centos-7" #Sistema Operacional do servidor
    }
  }

  network_interface {
    network = "default"
    access_config {

    }
  }
}
