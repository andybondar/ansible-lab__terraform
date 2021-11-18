variable "www_vm_name" {
  type        = string
  description = "WWW Server VM name"
}

variable "www_vm_machine_type" {
  type        = string
  description = "VM machine type"
  default     = "e2-micro"
}

variable "vm_zone" {
  type        = string
  description = "VM zone"
  default     = "us-central1-a"
}

variable "www_boot_disk_image" {
  type        = string
  description = "WWW Server boot disk image"
  default     = "projects/debian-cloud/global/images/debian-10-buster-v20211105"
}

variable "www_boot_disk_size" {
  type        = string
  description = "WWW Server boot disk size"
  default     = "10"
}

variable "vm_subnetwork" {
  type        = string
  description = "VM subnetwork"
  default     = "default"
}

variable "www_vm_tags" {
  type        = list(string)
  description = "List of network tags for WWW Server"
  default = []
}

variable "www_vm_labels" {
  type = map(string)
  description = "List of WWW Server lables"
  default = {}
}