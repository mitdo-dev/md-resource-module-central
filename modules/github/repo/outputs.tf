output "repo_name" {
  description = "The name of the repository"
  value       = github_repository.this.name
}

output "repo_full_name" {
  description = "The full name of the repository (owner/repo)"
  value       = github_repository.this.full_name
}

output "repo_html_url" {
  description = "The GitHub URL for the repository"
  value       = github_repository.this.html_url
}

output "repo_ssh_clone_url" {
  description = "SSH URL to clone the repository"
  value       = github_repository.this.ssh_clone_url
}

output "repo_http_clone_url" {
  description = "HTTP URL to clone the repository"
  value       = github_repository.this.http_clone_url
}