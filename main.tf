module "vpc" {
  source = "./infrastructure/vpc"

  azs                = var.azs
  public_subnets     = var.public_subnets
  private_subnets    = var.private_subnets
  database_subnets   = var.database_subnets
  enable_nat_gateway = var.enable_nat_gateway

  # Global Tagging Requirements
  tags    = local.common_tags
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

  tier           = "starter_small"
  vpc_cidr_block = module.vpc.vpc_cidr_block
  aws_region     = var.region
  hvn_region     = var.hvn_region
  vpc_id         = module.vpc.vpc_id
  owner_id       = module.vpc.vpc_owner_id

  env     = var.env
  service = "network"
  budget  = "ccoe"
  owner   = "ccoe"
  hipaa   = false
  pii     = false
  ttl     = -1
}