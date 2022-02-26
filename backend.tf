terraform {
  backend "remote" {
    organization = "Unicorp"

    workspaces {
      prefix = "infrastructure_"
    }
  }
}
