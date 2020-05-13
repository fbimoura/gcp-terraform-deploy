output "hostname" {
  value = google_compute_instance.server.name
}

output "ipaddr" {
  value = google_compute_instance.server.network_interface.0.access_config.0.nat_ip
}
