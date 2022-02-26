terraform {
  backend "remote" {
    organization = "Unicorp"

    workspaces {
      name = "unicorp-infrastructure"
    }
  }
}
