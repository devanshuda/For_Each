variable "virtual_machine_name" {
	description = "The name of the virtual machine"
	type = string
}

variable "location" {

}

variable "resource_group_name" {

}

variable "network_interface_ids" {
	description = "The list of IDs of network interface"
	type = list(string)
}

variable "virtual_machine_vm_size" {
	description = "The VM size of the virtual machine"
	type = string
} 

# Uncomment this line to delete the OS disk automatically when deleting the VM
# variable "virtual_machine_delete_os_disk_on_termination" {
#	description = "Delete OS Disk on termination in the virtual machine?"
#	type = bool
# } 

# Uncomment this line to delete the data disks automatically when deleting the VM
# variable "virtual_machine_delete_data_disks_on_termination" {
#	description = "Delete Data Disk on termination in the virtual machine?"
#	type = bool
# }

variable "vm_storage_image_reference_publisher" {
	description = "The storage image reference publisher of the virtual machine"
	type = string
}

variable "vm_storage_image_reference_offer" {
	description = "The storage image reference offer of the virtual machine"
	type = string

}

variable "vm_storage_image_reference_sku" {
	description = "The storage image reference sku of the virtual machine"
	type = string
}

variable "vm_storage_image_reference_version" {
	description = "The storage image reference version of the virtual machine"
	type = string
}
  
variable "vm_storage_os_disk_name" {
	description = "The name of the virtual machine's storage OS disk"
	type = string
}

variable "vm_storage_os_disk_caching" {
	description = "The caching of the virtual machine's storage OS disk"
	type = string
}

variable "vm_storage_os_disk_create_option" {
	description = "The create option of the virtual machine's storage OS disk"
	type = string
}

variable "vm_storage_os_disk_managed_disk_type" {
	description = "The managed disk type of the virtual machine's storage OS disk"
	type = string
} 
  
variable "vm_os_profile_computer_name" {
	description = "The computer name of the virtual machine's OS profile"
	type = string
}

variable "vm_os_profile_admin_username" {
	description = "The admin username of the virtual machine's OS profile"
	type = string
} 

variable "vm_os_profile_admin_password" {
	description = "The admin password of the virtual machine's OS profile"
	type = string
} 

variable "vm_os_profile_linux_config_disable_password_authentication" {
	description = "The linux config disable password authentication of the virtual machine's OS profile"
	type = bool
}

variable "vm_tags_environment" {
	description = "The environment of the virtual machine"
	type = string
}
  