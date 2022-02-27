provider "aws" {
  region = var.aws_region
}

resource "hcp_aws_network_peering" "this" {
  hvn_id          = hcp_hvn.this.hvn_id
  peering_id      = var.peering_id
  peer_vpc_id     = var.vpc_id
  peer_account_id = var.owner_id
  peer_vpc_region = var.aws_region
}

resource "hcp_hvn_route" "this" {
  hvn_link         = hcp_hvn.this.self_link
  hvn_route_id     = var.route_id
  destination_cidr = var.vpc_cidr_block
  target_link      = hcp_aws_network_peering.this.self_link
}

resource "aws_vpc_peering_connection_accepter" "this" {
  vpc_peering_connection_id = hcp_aws_network_peering.this.provider_peering_id
  auto_accept               = true
}
