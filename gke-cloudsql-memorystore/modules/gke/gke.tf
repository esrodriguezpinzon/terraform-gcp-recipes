
provider "google" {
  credentials = ""
  project     = var.project
  region      = var.region
}

resource "google_container_cluster" "primary" {
  name               = var.cluster-name
  location           = var.zone
  initial_node_count = var.initial-node-count
  network            = "projects/${var.network-project}/global/networks/${var.network}"
  subnetwork         = "projects/${var.network-project}/regions/${var.region}/subnetworks/${var.subnetwork}"

  logging_service    = "logging.googleapis.com/kubernetes"
  monitoring_service = "monitoring.googleapis.com/kubernetes"
  
  remove_default_node_pool = true //Delete the default node pool

  private_cluster_config {
    enable_private_nodes    = true
    enable_private_endpoint = false
    master_ipv4_cidr_block  = var.master-ipv4-block
  }

  ip_allocation_policy {
    cluster_secondary_range_name  = var.cluster-secondary-range-name
    services_secondary_range_name = var.services-secondary-range-name
  }

  addons_config {
    horizontal_pod_autoscaling {
      disabled = false
    }
  }

  master_authorized_networks_config {
    cidr_blocks {
      cidr_block   = var.default-master-access-block
      display_name = "Default master access"
    }
  }

}

resource "google_container_node_pool" "node-pool-1" {
  name       = "${google_container_cluster.primary.name}-np1"
  location   = var.zone
  cluster    = google_container_cluster.primary.name
  node_count = var.node-count-np1

  node_config {
    tags = []

    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
      "https://www.googleapis.com/auth/devstorage.read_write",
    ]

    preemptible  = false
    machine_type = var.machine-type-np1
    disk_size_gb = var.disk-size-np1
    disk_type    = var.disk-type-np1
  }
}