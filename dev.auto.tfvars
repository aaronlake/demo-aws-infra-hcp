env    = "dev"
region = "us-east-1"

# VPC Configuration
########################
azs                = ["us-east-1a", "us-east-1b"]
public_subnets     = ["10.0.101.0/24"]
private_subnets    = ["10.0.1.0/24"]
database_subnets   = ["10.0.200.0/24", "10.0.201.0/24"]
enable_nat_gateway = true
single_nat_gateway = true

# Vault Configuration
#########################
hvn_region     = "us-east-1"
hvn_cidr_block = "172.25.16.0/20"