// General configuration

variable "project" {
}

variable "region" {
}

variable "zone" {
}

//Shared VPC and network config

variable "network-project" {
}

variable "network" {
}

variable "subnetwork" {
}

variable "cluster-secondary-range-name" {
}

variable "services-secondary-range-name" {
}

//Cluster config

variable "cluster-name" {
}

variable "initial-node-count" {
}

variable "master-ipv4-block" {
}

variable "default-master-access-block" {
    default = "0.0.0.0/0"
}

// Node pool 1 config

variable "machine-type-np1" {
}

variable "node-count-np1" {
}

variable "disk-size-np1" {
}

variable "disk-type-np1" {
}
