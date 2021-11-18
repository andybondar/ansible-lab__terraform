resource "google_compute_instance" "www_server" {
  project      = var.project_name
  name         = var.www_vm_name
  machine_type = var.www_vm_machine_type
  zone         = var.vm_zone

  tags = var.www_vm_tags
  labels = var.www_vm_labels

  boot_disk {
    initialize_params {
      image = var.www_boot_disk_image
      size  = var.www_boot_disk_size
    }
  }

  network_interface {
    subnetwork_project = var.project_name
    subnetwork         = var.vm_subnetwork
    access_config {}
  }
}