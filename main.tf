module "vpc" {
  source = "./infrastructure/vpc"

  azs                = var.azs
  public_subnets     = var.public_subnets
  private_subnets    = var.private_subnets
  enable_nat_gateway = var.enable_nat_gateway

  # Global Tagging Requirements
  tags    = local.common_tags
  env     = var.env
  service = "core"
  budget  = "ccoe"
  owner   = "ccoe"
  hipaa   = true
  pii     = false
  ttl     = -1
}
