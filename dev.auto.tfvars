env    = "dev"
region = "us-east-1"

# VPC Configuration
########################
azs                = ["us-east-1a", "us-east-1b"]
private_subnets    = ["10.0.1.0/24", "10.0.2.0/24"]
public_subnets     = ["10.0.101.0/24"]
enable_nat_gateway = true

# Vault Configuration
#########################
hvn_region = "us-east-1"
# vault_address = "https://vault-cluster.vault.f4424013-a029-4e76-9f93-f1343eee80ac.aws.hashicorp.cloud:8200"