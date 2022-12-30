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
    token = ""
}

# Add a user to the organization
resource "github_repository" "example" {
    name = "terraform-github-repo"
    visibility = "private"
}