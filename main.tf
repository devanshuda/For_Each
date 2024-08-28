#.......... Module for Resource Group ..........
module "Resource_Group" {

  for_each = var.resource_groups
  source   = "../Modularization/ResourceGroup"

  resource_group_name = each.value.resource_group_name
  location            = each.value.location
}

#.......... Module for Virtual Network ..........
module "Virtual_Network" {

  for_each = var.virtual_networks
  source   = "../Modularization/VirtualNetwork"

  virtual_network_name          = each.value.virtual_network_name
  virtual_network_address_space = each.value.virtual_network_address_space
  location                      = module.Resource_Group[each.value.resource_group_location].resource_group_location_OUT
  resource_group_name           = module.Resource_Group[each.value.resource_group_name].resource_group_name_OUT
}

#.......... Module for Virtual Network ..........
module "Subnet" {

  for_each = var.subnets
  source   = "../Modularization/Subnet"

  subnet_name             = each.value.subnet_name
  subnet_address_prefixes = each.value.subnet_address_prefixes
  virtual_network_name    = module.Virtual_Network[each.value.virtual_network_name].virtual_network_name_OUT
  resource_group_name     = module.Resource_Group[each.value.resource_group_name].resource_group_name_OUT
}

#.......... Module for Network Interface ..........
module "Network_Interface" {

  for_each = var.network_interfaces
  source   = "../Modularization/NetworkInterface"

  network_interface_name = each.value.network_interface_name
  location               = module.Resource_Group[each.value.resource_group_location].resource_group_location_OUT
  resource_group_name    = module.Resource_Group[each.value.resource_group_name].resource_group_name_OUT

  nic_ip_configuration_name                          = each.value.nic_ip_configuration_name
  subnet_id                                          = module.Subnet[each.value.subnet_id].subnet_id_OUT
  nic_ip_configuration_private_ip_address_allocation = each.value.nic_ip_configuration_private_ip_address_allocation
}


#.......... Module for Virtual Machine ..........
module "Virtual_Machine" {

  for_each = var.virtual_machines
  source   = "../Modularization/VirtualMachine"

  virtual_machine_name    = each.value.virtual_machine_name
  location                = module.Resource_Group[each.value.resource_group_location].resource_group_location_OUT
  resource_group_name     = module.Resource_Group[each.value.resource_group_name].resource_group_name_OUT
  network_interface_ids   = module.Network_Interface[each.value.network_interface_ids].network_interface_ids_OUT
  virtual_machine_vm_size = each.value.virtual_machine_vm_size

  # Uncomment this line to delete the OS disk automatically when deleting the VM
  # virtual_machine_delete_os_disk_on_termination = var.virtual_machine_delete_os_disk_on_termination 

  # Uncomment this line to delete the data disks automatically when deleting the VM
  # virtual_machine_delete_data_disks_on_termination = var.virtual_machine_delete_data_disks_on_termination 

  vm_storage_image_reference_publisher = each.value.vm_storage_image_reference_publisher
  vm_storage_image_reference_offer     = each.value.vm_storage_image_reference_offer
  vm_storage_image_reference_sku       = each.value.vm_storage_image_reference_sku
  vm_storage_image_reference_version   = each.value.vm_storage_image_reference_version


  vm_storage_os_disk_name              = each.value.vm_storage_os_disk_name
  vm_storage_os_disk_caching           = each.value.vm_storage_os_disk_caching
  vm_storage_os_disk_create_option     = each.value.vm_storage_os_disk_create_option
  vm_storage_os_disk_managed_disk_type = each.value.vm_storage_os_disk_managed_disk_type

  vm_os_profile_computer_name                                = each.value.vm_os_profile_computer_name
  vm_os_profile_admin_username                               = each.value.vm_os_profile_admin_username
  vm_os_profile_admin_password                               = each.value.vm_os_profile_admin_password
  vm_os_profile_linux_config_disable_password_authentication = each.value.vm_os_profile_linux_config_disable_password_authentication

  vm_tags_environment = each.value.vm_tags_environment
}

#.......... For using values via module, you need to use the output variable for that module. For Ex:-
#.......... If Subnet wants to have the value of "ResourceGroup" module's resource_group_name then
#.......... It must take the output variable of "resource_group01_name" from the output.tf under ResourceGroup folder