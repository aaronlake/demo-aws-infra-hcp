terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.2.0"
    }

    hcp = {
      source  = "hashicorp/hcp"
      version = "~> 0.22.0"
    }
  }
}

provider "aws" {
  region = var.region

  default_tags {
    tags = local.common_tags
  }
}


provider "hcp" {
  client_id     = "6zV8dD7kENzwq60RYtJ4V4gvBonWz1kx"
  client_secret = "Blx4BLUPf78SLEL2DSv8p7pQw4LNkCmHSa6Mgvc4sBWQF-NoeEzojv8xjCxgJexs"
}
