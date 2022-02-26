terraform {
  backend "remote" {
    organization = "Unicorp"
    workspaces {
      prefix = "dev"
    }
  }
}
