terraform {
  required_version = "~> 1.3"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

module "tf-state" {
  source      = "./modules/tf-state"
  bucket_name = local.state_bucket_name
  bucket_location = local.region
}