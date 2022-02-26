module "vpc" {
  source = "./infrastructure/vpc"

  env     = var.env
  service = "core"
  budget  = "ccoe"
  owner   = "ccoe"
  hipaa   = true
  pii     = false
  ttl     = -1

  azs                = var.azs
  public_subnets     = var.public_subnets
  private_subnets    = var.private_subnets
  enable_nat_gateway = var.enable_nat_gateway

  # Tags
  tags = local.common_tags
}
