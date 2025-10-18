terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }

  required_version = ">= 1.3.0"
}

provider "github" {
  token = var.github_token
  owner = "Uthmanade001" # your GitHub username
}

# Create a new public repo with auto-generated README
resource "github_repository" "demo_repo" {
  name        = "terraform-new-repo"
  description = "This repository was created automatically using Terraform and GitHub Actions 🚀"
  visibility  = "public"
  auto_init   = true
}

# (Optional) Add a collaborator – change the username if needed
resource "github_repository_collaborator" "collab" {
  repository = github_repository.demo_repo.name
  username   = "Nurudeen111-oss"
  permission = "push"
}

