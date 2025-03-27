resource "github_repository" "this" {
  name               = var.name
  description        = var.description
  visibility         = var.visibility
  has_issues         = var.has_issues
  has_wiki           = var.has_wiki
  auto_init          = var.auto_init
  license_template   = var.license_template
  topics             = var.topics
  owner              = var.organization
  vulnerability_alerts = true
  allow_merge_commit   = true
  allow_squash_merge   = true
  allow_rebase_merge   = true
  delete_branch_on_merge = true
}