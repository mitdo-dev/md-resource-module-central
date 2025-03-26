# GitHub Repository Terraform Module

A simple Terraform module to create GitHub repositories with common configurations.

## Usage

```hcl
module "example_repo" {
  source        = "./modules/github-repo"
  name          = "example-repo"
  description   = "An example repository"
  visibility    = "private"
  has_issues    = true
  auto_init     = true
  topics        = ["terraform", "automation"]
}