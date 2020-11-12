module "gke" {
  source = "./modules/gke"

  project = var.project
  region  = var.region
  zone    = var.zone

  network-project = var.network-project
  network = var.network
  subnetwork  = var.subnetwork

  cluster-secondary-range-name  = var.cluster-secondary-range-name
  services-secondary-range-name = var.services-secondary-range-name
  cluster-name  = var.cluster-name
  initial-node-count  = var.initial-node-count
  master-ipv4-block = var.master-ipv4-block
  machine-type-np1  = var.machine-type-np1
  node-count-np1  = var.node-count-np1
  disk-size-np1 = var.disk-size-np1
  disk-type-np1 = var.disk-type-np1
}
