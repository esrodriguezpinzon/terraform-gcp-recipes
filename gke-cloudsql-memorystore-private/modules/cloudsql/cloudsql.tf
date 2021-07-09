
provider "google-beta" {
  credentials = ""
  project     = var.project
  region      = var.region
}

resource "google_sql_database_instance" "instance" {
  provider = google-beta

  name   = var.db-name
  database_version = var.db-version
  region = var.region

  settings {
    tier = var.tier
    ip_configuration {
      ipv4_enabled    = false
      private_network = "projects/${var.network-project}/global/networks/${var.network}"
    }
  }
}