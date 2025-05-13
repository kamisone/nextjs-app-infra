resource "google_artifact_registry_repository" "repo" {
  location      = var.repo_location
  repository_id = var.repo_name
  format        = var.repo_format
}