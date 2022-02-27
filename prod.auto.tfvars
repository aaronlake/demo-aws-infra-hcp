env    = "prod"
region = "us-east-1"

# VPC Configuration
########################
azs                = ["us-east-1a", "us-east-1b"]
private_subnets    = ["10.0.1.0/24", "10.0.2.0/24"]
public_subnets     = ["10.0.101.0/24"]
enable_nat_gateway = true
