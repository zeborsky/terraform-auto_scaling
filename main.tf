resource "google_compute_network" "simple" {
  name      = "life-vpc"
  project = "iungo-poc"
  auto_create_subnetworks = true
}
resource "google_compute_instance_template" "dev" {
  name         = var.instance_template_name
  machine_type = var.instance_template_machine_type
  project      = var.project

  network_interface {
    network = "default"
    access_config {
    }
  }
  // boot disk
  disk {
    source_image = "debian-cloud/debian-11"
  }
}

provider "google" {
  region  = "var.region"
  project = "iungo-poc"
}

resource "google_compute_instance_group_manager" "simple" {
  provider = google
   base_instance_name = "autoscaler-sample"
   name = "my-igm"
   zone = "us-central1-a"


  version {
    instance_template = google_compute_instance_template.dev.id
    name              = "primary"
  }
  }

resource "google_compute_autoscaler" "myautoscaler" {
  name   = "dev-autoscaler"
  zone  = "us-central1-a"
  target = google_compute_instance_group_manager.simple.id
  autoscaling_policy {
    max_replicas    = 5
    min_replicas    = 2
    cooldown_period = 60

    cpu_utilization {
      target = 0.5
    }
  }
}