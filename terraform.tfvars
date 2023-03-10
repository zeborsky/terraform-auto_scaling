project                           = "iungo-poc"
region                            = "us-central1"
instance_template_name            = "example-instance"
instance_template_machine_type    = "f1-micro"
instance_group_name               = "my-igm"
instance_group_zone               = "us-central1-a"
network_interface                 = "default"
autoscaler_name                   = "dev-autoscaler"
autoscaler_zone                   = "us-central1-a"
autoscaler_max_replicas           = 5
autoscaler_min_replicas           = 2
autoscaler_cooldown_period        = 60
autoscaler_cpu_utilization_target = 0.5
firewall_http_name                = "allow-http"
firewall_https_name               = "allow-https"
