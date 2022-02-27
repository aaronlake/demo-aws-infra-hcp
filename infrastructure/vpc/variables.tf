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

variable "owner" {
  description = "Owner of the resource"
  type        = string
}

variable "budget" {
  description = "Team responsible for the resource"
  type        = string
}

variable "service" {
  description = "Service offering"
  type        = string
}

variable "hipaa" {
  description = "HIPAA compliance"
  type        = bool
}

variable "pii" {
  description = "PII compliance"
  type        = bool
}

variable "ttl" {
  description = "Hours before the resource expires. *Use -1 for indefinite.*"
  type        = string
  default     = "168"
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

variable "database_subnets" {
  description = "Database subnets"
  type        = list(string)
}

variable "enable_nat_gateway" {
  description = "Enable NAT Gateway"
  type        = bool
}

variable "tags" {
  description = "Tags"
  type        = map(string)
}
