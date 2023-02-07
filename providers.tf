
terraform {
  required_version = ">=0.13.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.28"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "~> 4.28"
    }
  }
  provider_meta "google" {
    module_name = "blueprints/terraform/terraform-google-project-factory/v14.1.0"
  }
  provider_meta "google-beta" {
    module_name = "blueprints/terraform/terraform-google-project-factory/v14.1.0"
  }
}
provider "google" {
  project     = var.gcp_project
  credentials = file(var.gcp_auth_file)
  region      = var.gcp_region
}
provider "google-beta" {
  project     = var.gcp_project
  credentials = file(var.gcp_auth_file)
  region      = var.gcp_region
}