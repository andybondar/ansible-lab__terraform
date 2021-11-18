variable "vm_properties" {
  type = any
  description = "VM properties"
  default = {}
}

variable "ssh_user" {
  type = string
  description = "SSH user's name"
}

variable "ssh_pub_key_file" {
  type = string
  description = "Server's user SSH public key"
}