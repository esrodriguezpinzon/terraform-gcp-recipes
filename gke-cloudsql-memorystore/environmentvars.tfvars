project                         = "YOUR_PROJECT_ID"
region                          = "us-east1"
zone                            = "us-east1-b"
initial-node-count              = 1

#Network config

network-project                 = "YOUR_PROJECT_NETWORK" // If you use standalone project use YOUR_PROJECT_NAME
network                         = "NETWORK_NAME" // shared-net
subnetwork                      = "SUBNETWORK_NAME" // Subnet Nodes
master-ipv4-block               = "172.16.8.0/28"

#Cluster config

cluster-name                    = "CLUSTER_NAME"
cluster-secondary-range-name    = "SECONDARY_RANGE_NAME_PODS" // Pods segment(minimun /21). This config is for vpc-native clusters(Recommended option)
services-secondary-range-name   = "SECONDARY_RANGE_NAME_SERVICES" // Cluster Services segment

#Node pool 1 config
machine-type-np1                = "n1-standard-2"
node-count-np1                  = 1 //1 per zone
disk-size-np1                   = 20 // GB
disk-type-np1                   = "pd-ssd"