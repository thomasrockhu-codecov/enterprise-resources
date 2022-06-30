
terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.10.0"
    }
  }
  required_version = ">= 0.13.1"
}
