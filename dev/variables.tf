locals {
  common_tags = {
    Name      = var.name
    owner     = var.owner
    budget    = var.cost_center
    service   = var.service
    hipaa     = var.hipaa
    pii       = var.pii
    ttl       = var.ttl
    terraform = true
  }
}

variable "Name" {
  description = "Name of the resource"
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

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-2"
}
