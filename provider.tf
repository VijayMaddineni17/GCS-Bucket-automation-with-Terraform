provider "google" {
  credentials = file("${path.module}/${var.gcp_svc_key}")
  project = var.gcp_project
  region = var.gcp_region
}