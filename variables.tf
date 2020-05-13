variable "projeto" {
  description = "Nome do projeto hospedeiro"
}

variable "regiao" {
  description = "Região de localização do projeto"
}

variable "zona" {
  description = "Zona de localização do DATACENTER"
}

variable "servername" {
  description = "Definição de nome do servidor"
  default     = "cloud-srv01"
}
