resource "azurerm_virtual_machine" "virtual_machine" {
  name                  = var.virtual_machine_name 
  location              = var.location
  resource_group_name   = var.resource_group_name
  network_interface_ids = var.network_interface_ids
  vm_size               = var.virtual_machine_vm_size 

  # Uncomment this line to delete the OS disk automatically when deleting the VM
  # delete_os_disk_on_termination = var.virtual_machine_delete_os_disk_on_termination true

  # Uncomment this line to delete the data disks automatically when deleting the VM
  # delete_data_disks_on_termination = var.virtual_machine_delete_data_disks_on_termination true

  storage_image_reference {
    publisher = var.vm_storage_image_reference_publisher
    offer     = var.vm_storage_image_reference_offer
    sku       = var.vm_storage_image_reference_sku
    version   = var.vm_storage_image_reference_version
  }
  storage_os_disk {
    name              = var.vm_storage_os_disk_name
    caching           = var.vm_storage_os_disk_caching
    create_option     = var.vm_storage_os_disk_create_option
    managed_disk_type = var.vm_storage_os_disk_managed_disk_type 
  }
  os_profile {
    computer_name  = var.vm_os_profile_computer_name
    admin_username = var.vm_os_profile_admin_username 
    admin_password = var.vm_os_profile_admin_password 
  }
  os_profile_linux_config {
    disable_password_authentication = var.vm_os_profile_linux_config_disable_password_authentication 
  }
  tags = {
    environment = var.vm_tags_environment 
  }
}