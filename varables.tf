variable "google_compute_network" {
   type    = string
  default = "life-vpc"
  description = "auto_create_subnetworks"
}

variable "project" {
  type        = string
  description = "iuhngo-poc"
}

variable "region" {
  type        = string
  default     = "us-central1"
  description = "us-central1"
}

variable "instance_template_name" {
  type        = string
  default     = "example-instance"
  description = "example-instance"
}

variable "network_interface" {
  type        = string
  description = "default"
}

// boot disk

variable "instance_template_machine_type" {
  type        = string
  default     = "f1-micro"
  description = "f1-micro"
}

variable "instance_group_name" {
  type        = string
  default     = "my-igm"
  description = "my-igm"
}

variable "instance_group_zone" {
  type        = string
  default     = "us-central1-a"
  description = "us-central1-a"
}

variable "autoscaler_name" {
  type        = string
  default     = "dev-autoscaler"
  description = "dev-autoscaler"
}

variable "autoscaler_zone" {
  type        = string
  default     = "us-central1-a"
  description = "us-central1-a"
}

variable "autoscaler_max_replicas" {
  type        = number
  default     = 5
  description = 5
}

variable "autoscaler_min_replicas" {
  type        = number
  default     = 2
  description = 2
}

variable "autoscaler_cooldown_period" {
  type        = number
  default     = 60
  description = 60
}

variable "autoscaler_cpu_utilization_target" {
  type        = number
  default     = 0.5
  description = 0.5
}

variable "firewall_http_name" {
  type        = string
  default     = "allow-http"
  description = "allow-http"
}

variable "firewall_https_name" {
  type        = string
  default     = "allow-https"
  description = "allow-https"
}
