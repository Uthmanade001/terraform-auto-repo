output "repo_name" {
  value = github_repository.demo_repo.name
}

output "repo_url" {
  value = github_repository.demo_repo.html_url
}
