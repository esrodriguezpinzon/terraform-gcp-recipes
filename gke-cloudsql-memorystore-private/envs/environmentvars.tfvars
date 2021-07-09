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

#Db config

db-name                         = "DB_NAME"
db-version                      = "MYSQL_5_7"
tier                            = "db-f1-micro"

#Memorystore config

memorystore-name                = "MM_NAME"
memorystore-tier                = "BASIC"
memorystore-size                = 1
memorystore-connect-mode        = "PRIVATE_SERVICE_ACCESS"
memorystore-version             = "REDIS_4_0"
