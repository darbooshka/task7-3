terraform {
  backend "gcs" {
    bucket = "task7-3"
    prefix = "terraform/state"
  }
}

module "gke_cluster" {
  source         = "github.com/darbooshka/tf-google-gke-cluster"
  GOOGLE_REGION  = var.GOOGLE_REGION
  GOOGLE_PROJECT = var.GOOGLE_PROJECT
  GKE_NUM_NODES  = var.GKE_NUM_NODES
}