resource "hcp_hvn" "this" {
  hvn_id         = var.hvn_id
  cloud_provider = var.cloud_provider
  region         = var.hvn_region
}

resource "hcp_vault_cluster" "this" {
  hvn_id          = hcp_hvn.this.hvn_id
  cluster_id      = var.cluster_id
  tier            = var.tier
  public_endpoint = true
}