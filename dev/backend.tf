terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "Unicorp"
    workspaces {
      name      = "dev"
      provider  = "github"
      workspace = "dev"
    }
  }
}
