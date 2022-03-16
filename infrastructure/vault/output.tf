output "vault_private_endpoint_url" {
  value = hcp_vault_cluster.this.vault_private_endpoint_url
}

output "vault_public_endpoint_url" {
  value = hcp_vault_cluster.this.vault_public_endpoint_url
}

output "hvn_cidr_block" {
  value = var.hvn_cidr_block
}
