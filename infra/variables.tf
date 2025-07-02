variable "project_id" {
    type = string
    description = "GCP project ID"
}

variable "region" {
    type = string
    default = "us-east1"
}

variable "zone" {
    type = string
    default = "us-east1-b"
}

variable "cluster_name" {
    type = string
    default = "dev-gke-cluster"
}