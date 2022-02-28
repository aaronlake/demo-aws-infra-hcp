output "db_subnet_group_name" {
  value = module.vpc.database_subnet_group_name
}

output "vault_private_endpoint_url" {
  value = module.vault.vault_private_endpoint_url
}
