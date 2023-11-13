terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {
  token = var.gh_token
}

resource "github_repository" "terraform" {
  name        = "terraform"
  description = "Hashicorp/Terraform Udemy Course"

  visibility = "public"
}