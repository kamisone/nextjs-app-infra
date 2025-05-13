variable "repo_name" {
  description = "The name of the Artifact Registry repository"
  type        = string
}

variable "repo_location" {
  description = "Region where the repository is created"
  type        = string
}

variable "repo_format" {
  description = "Format of the repo, usually 'DOCKER'"
  type        = string
}