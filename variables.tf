locals {
  vars = merge(
    yamldecode(file("vars.${terraform.workspace}.yaml"))
  )

  common_tags = {
    env       = local.vars.env
    terraform = true
  }
}

variable "hcp_client_id" {
  description = "HCP Client ID"
  type        = string
}

variable "hcp_client_secret" {
  description = "HCP Client Secret"
  type        = string
}