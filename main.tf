module "vpc" {
  source = "./infrastructure/vpc"

  azs                = var.azs
  public_subnets     = var.public_subnets
  private_subnets    = var.private_subnets
  database_subnets   = var.database_subnets
  enable_nat_gateway = var.enable_nat_gateway
  single_nat_gateway = var.single_nat_gateway

  # Global Tagging Requirements
  env     = var.env
  service = "network"
  budget  = "ccoe"
  owner   = "ccoe"
  hipaa   = true
  pii     = false
  ttl     = -1
}

module "vault" {
  source = "./infrastructure/vault"

  tier                     = "starter_small"
  vpc_cidr_block           = module.vpc.vpc_cidr_block
  aws_region               = var.region
  hvn_region               = var.hvn_region
  hvn_cidr_block           = var.hvn_cidr_block
  vpc_id                   = module.vpc.vpc_id
  owner_id                 = module.vpc.vpc_owner_id
  private_route_table_ids  = module.vpc.private_route_table_ids
  database_route_table_ids = module.vpc.database_route_table_ids

  # Global Tagging Requirements
  env     = var.env
  service = "network"
  budget  = "ccoe"
  owner   = "ccoe"
  hipaa   = false
  pii     = false
  ttl     = -1
}
