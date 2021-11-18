resource "google_compute_instance" "server" {
  count        = length(local.vms)
  project      = var.project_name
  name         = local.vms[count.index].name
  machine_type = local.vms[count.index].machine_type
  zone         = local.vms[count.index].zone

  boot_disk {
    initialize_params {
      image = local.vms[count.index].image
      size  = local.vms[count.index].boot_disk_size
    }
  }

  network_interface {
    subnetwork_project = var.project_name
    subnetwork         = local.vms[count.index].subnetwork
    dynamic "access_config" {
      for_each = local.vms[count.index].public_ip == true ? [1] : []
      content {}
    }
  }

  metadata = {
    ssh-keys = "${var.ssh_user}:${file(var.ssh_pub_key_file)}"
  }
}