module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "${var.env}-${var.service}-vpc"
  cidr = "10.0.0.0/16"

  azs                = var.azs
  private_subnets    = var.private_subnets
  public_subnets     = var.public_subnets
  enable_nat_gateway = var.enable_nat_gateway

  enable_flow_log                      = true
  create_flow_log_cloudwatch_log_group = true
  create_flow_log_cloudwatch_iam_role  = true
  flow_log_max_aggregation_interval    = 60

  vpc_flow_log_tags = merge(local.common_tags, {
    Name  = "${var.env}-${var.service}-vpc-flowlogs"
    pii   = false
    ttl   = -1
    hipaa = true
  })

  tags = merge(local.common_tags, {
    owner   = var.owner
    budget  = var.budget
    service = var.service
    hipaa   = var.hipaa
    pii     = var.pii
    ttl     = -1
  })
}
