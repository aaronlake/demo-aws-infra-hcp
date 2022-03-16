output "vault_private_endpoint_url" {
  value = module.vault.vault_private_endpoint_url
}

output "vault_public_endpoint_url" {
  value = module.vault.vault_public_endpoint_url
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "db_subnet_group_name" {
  value = module.vpc.database_subnet_group_name
}

output "private_subnets_cidr_blocks" {
  value = module.vpc.private_subnets_cidr_blocks
}

output "private_subnets" {
  value = module.vpc.private_subnets
}

output "public_subnets_cidr_blocks" {
  value = module.vpc.public_subnets_cidr_blocks
}

output "hvn_cidr_block" {
  value = module.vault.hvn_cidr_block
}
