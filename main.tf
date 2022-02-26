module "vpc" {
  source = "../infrastructure/vpc"

  azs                = var.azs
  public_subnets     = var.public_subnets
  private_subnets    = var.private_subnets
  enable_nat_gateway = true

  # Tags
  owner   = "ccoe"
  env     = var.env
  budget  = "ccoe"
  service = "network"
  hipaa   = true
  pii     = false
  ttl     = -1
}
