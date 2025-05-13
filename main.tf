terraform {
  required_version = "~> 1.3"

  backend "gcs" {
    // parameters are in backend.dev.hcl file
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

module "artifactRepo" {
  source         = "./modules/artifact-registry"
  repo_name      = local.artifact_repo_name
  repo_location  = local.region
  repo_format    = "DOCKER"
}

module "cloudRun" {
  source       = "./modules/cloud-run"
  service_name = local.cloud_run_service_name
  region       = local.region
  image_url    = "europe-west9-docker.pkg.dev/${local.project_id}/${local.artifact_repo_name}/app:latest"
  count    = var.deploy_cloud_run ? 1 : 0
}
