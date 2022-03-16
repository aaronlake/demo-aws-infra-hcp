terraform {
  backend "remote" {
    organization = "Unicorp"

    workspaces {
      name = "demo-aws-infra-hcp"
    }
  }
}
