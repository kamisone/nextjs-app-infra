resource "google_storage_bucket" "terraform_state" {
  name     = var.bucket_name
  location = var.bucket_location
  force_destroy = true

  versioning {
    enabled = true
  }

  uniform_bucket_level_access = true

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = 90
    }
  }
}
