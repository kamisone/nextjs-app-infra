variable "service_name" {
  description = "Name of the Cloud Run service"
  type        = string
}

variable "region" {
  description = "Region for the Cloud Run service"
  type        = string
}

variable "image_url" {
  description = "Docker image URL from Artifact Registry"
  type        = string
}