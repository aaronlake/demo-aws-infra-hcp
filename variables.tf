locals {
  common_tags = {
    env       = var.env
    terraform = true
  }
}

variable "env" {
  description = "Environment (dev, qa, test, prod)"
  type        = string
}

variable "region" {
  description = "AWS Region"
  type        = string
}

variable "azs" {
  description = "Availability Zones"
  type        = list(string)
}

variable "private_subnets" {
  description = "Private subnets"
  type        = list(string)
}

variable "public_subnets" {
  description = "Public subnets"
  type        = list(string)
}

variable "enable_nat_gateway" {
  description = "Enable NAT Gateway"
  type        = bool
}