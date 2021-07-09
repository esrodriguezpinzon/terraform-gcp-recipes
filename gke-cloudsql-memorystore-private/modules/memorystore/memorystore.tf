
provider "google" {
  credentials = ""
  project     = var.project
  region      = var.region
}

resource "google_redis_instance" "cache" {
  name                = var.memorystore-name
  tier                = var.memorystore-tier
  memory_size_gb      = var.memorystore-size

  location_id         = var.zone

  authorized_network  = "projects/${var.network-project}/global/networks/${var.network}"
  connect_mode        = var.memorystore-connect-mode

  redis_version       = var.memorystore-version

}
