resource "google_compute_network" "vpc" {
  name = var.network_name
  project = var.project
  description = var.description
  routing_mode = var.routing_mode
  auto_create_subnetworks = var.auto_create_subnetworks
  delete_default_routes_on_create = var.delete_default_routes_on_create
  mtu = mtu
}

resource "google_compute_shared_vpc_host_project" "shared_vpc_host" {
  count = var.shared_vpc_host ? 1 : 0
  project = var.project_id
  depends_on = [
    google_compute_network.vpc
  ]
}