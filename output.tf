output "db_subnet_group_name" {
  value = module.vpc.database_subnet_group_name
}

output "vault_private_endpoint_url" {
  value = module.vault.vault_private_endpoint_url
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "private_subnets_cidr_blocks" {
  value = module.vpc.private_subnets_cidr_blocks
}
