terraform {
    backend "gcs" {
        bucket = "k8s-microservices-stack-state"
        prefix = "gke-cluster"
    }
}