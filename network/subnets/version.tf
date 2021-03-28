terraform {
  required_providers {
    google = {
        source = "hashicorp/google"
        version = "~> 3.45"
    }
  }
  required_version = ">= 0.13.0"
}