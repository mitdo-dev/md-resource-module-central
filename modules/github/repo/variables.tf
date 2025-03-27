variable "name" {
  description = "The name of the repository (required)"
  type        = string
}

variable "description" {
  description = "A short description of the repository"
  type        = string
  default     = ""
}

variable "visibility" {
  description = "Repository visibility (public or private)"
  type        = string
  default     = "private"
  
  validation {
    condition     = contains(["public", "private"], var.visibility)
    error_message = "Visibility must be either 'public' or 'private'."
  }
}

variable "has_issues" {
  description = "Enable GitHub Issues for the repository"
  type        = bool
  default     = true
}

variable "has_wiki" {
  description = "Enable GitHub Wiki for the repository"
  type        = bool
  default     = false
}

variable "auto_init" {
  description = "Create initial commit with empty README"
  type        = bool
  default     = true
}

variable "default_branch" {
  description = "The name of the default branch"
  type        = string
  default     = "master"
}

variable "topics" {
  description = "List of topics to add to the repository"
  type        = list(string)
  default     = []
}

variable "license_template" {
  description = "License template to use (e.g., 'mit', 'apache-2.0')"
  type        = string
  default     = null
}

variable "template" {
  type = object({
    owner      = optional(string, "mitdo-dev")
    repository = string
  })
  description = "Template repository"
  default     = null
}