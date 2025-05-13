output "repo_id" {
  value = google_artifact_registry_repository.repo.id
}

output "repo_url" {
  value = "https://${var.repo_location}-docker.pkg.dev/${google_artifact_registry_repository.repo.project}/${google_artifact_registry_repository.repo.repository_id}"
}