locals {
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

variable "azs" {
  description = "Azure Availability Zones"
  type        = list(string)
}

variable "public_subnets" {
  description = "Public Subnets"
  type        = list(string)
}

variable "private_subnets" {
  description = "Private Subnets"
  type        = list(string)
}

variable "database_subnets" {
  description = "Database Subnets"
  type        = list(string)
}

variable "enable_nat_gateway" {
  description = "Enable NAT Gateway"
  type        = bool
}

variable "single_nat_gateway" {
  description = "Single NAT Gateway"
  type        = bool
}

variable "hvn_region" {
  description = "HVN Region"
  type        = string
}

variable "hvn_cidr_block" {
  description = "HVN CIDR Block"
  type        = string
}
