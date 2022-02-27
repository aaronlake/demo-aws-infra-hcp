module "vpc" {
  source = "./infrastructure/vpc"

  azs                = local.vars.azs
  public_subnets     = local.vars.public_subnets
  private_subnets    = local.vars.private_subnets
  database_subnets   = local.vars.database_subnets
  enable_nat_gateway = local.vars.enable_nat_gateway
  single_nat_gateway = local.vars.single_nat_gateway

  # Global Tagging Requirements
  tags    = local.common_tags
  env     = local.vars.env
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
  aws_region               = local.vars.region
  hvn_region               = local.vars.hvn_region
  hvn_cidr_block           = local.vars.hvn_cidr_block
  vpc_id                   = module.vpc.vpc_id
  owner_id                 = module.vpc.vpc_owner_id
  private_route_table_ids  = module.vpc.private_route_table_ids
  database_route_table_ids = module.vpc.database_route_table_ids

  env     = local.vars.env
  service = "network"
  budget  = "ccoe"
  owner   = "ccoe"
  hipaa   = false
  pii     = false
  ttl     = -1
}
