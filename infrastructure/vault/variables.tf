locals {
  common_tags = {
    env       = var.env
    terraform = true
  }
}

variable "hvn_id" {
  description = "The ID of the HCP HVN."
  type        = string
  default     = "vault-hvn"
}

variable "cluster_id" {
  description = "The ID of the HCP Vault cluster."
  type        = string
  default     = "vault-cluster"
}

variable "peering_id" {
  description = "The ID of the HCP peering connection."
  type        = string
  default     = "hcp-vault-peering"
}

variable "route_id" {
  description = "The ID of the HCP HVN route."
  type        = string
  default     = "hvn-route"
}

variable "aws_region" {
  description = "The AWS region containing the VPC."
  type        = string
}

variable "hvn_region" {
  description = "The region of the HCP HVN and Vault cluster."
  type        = string
}

variable "cloud_provider" {
  description = "The cloud provider of the HCP HVN and Vault cluster."
  type        = string
  default     = "aws"
}

variable "tier" {
  description = "Tier of the HCP Vault cluster. Valid options for tiers."
  type        = string
  default     = "dev"
}

variable "vpc_cidr_block" {
  description = "The CIDR block of the AWS VPC to peer with HCP HVN."
  type        = string
}

variable "vpc_id" {
  description = " The ID of the VPC to peer with HCP HVN."
  type        = string
}

variable "owner_id" {
  description = " The owner ID of the VPC to peer with HCP HVN."
  type        = string
}