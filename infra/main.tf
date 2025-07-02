provider "google" {
    project = var.project_id
    region = var.region
    zone = var.zone
}

resource "google_project_service" "container_api" {
    service = "container.googleapis.com"
}

resource "google_project_service" "compute_api" {
    service = "compute.googleapis.com"
}

resource "google_container_cluster" "gke_cluster" {
    name = var.cluster_name
    location = var.zone

    remove_default_node_pool = true
    initial_node_count = 1

    networking_mode = "VPC_NATIVE"

    ip_allocation_policy {}
}

resource "google_container_node_pool" "primary_nodes" {
    name = "primary-node-pool"
    location = var.zone
    cluster = google_container_cluster.gke_cluster.name

    node_count = 2

    node_config {
        machine_type = "e2-medium"
        oauth_scopes = [
            "https://www.googleapis.com/auth/cloud-platform"
        ]
        labels = {
            env = "dev"
        }
    }
}