locals {

  course_name = format("%s-%s-%s",
    lower(split("-",var.project_name)[0]),
    lower(split("-",var.project_name)[1]),
    lower(split("-",var.project_name)[2])
  )
  env_purpose = lower(split("-",var.project_name)[3])
  env_type = lower(split("-",var.project_name)[4])
  iteration = lower(split("-",var.project_name)[5])

  vms = flatten([
    for vm in var.vm_properties : {
      "name" = format("%s-%s-%s-%s-%s",local.course_name,local.env_purpose,vm.short_name,local.env_type,local.iteration)
      "machine_type" = vm.machine_type
      "zone" = vm.zone
      "boot_disk_size" = vm.boot_disk_size
      "image" = vm.boot_disk_image
      "subnetwork" = vm.subnetwork
      "public_ip" = vm.public_ip
      "tags" = vm.tags
      "labels" = vm.labels
    }
  ])
}