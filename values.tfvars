#...........Resource Group Values...........
resource_groups = {

  "rg_01" = {

    "resource_group_name" = "example-resources-01"
    "location"            = "West Europe"

  },
  "rg_02" = {

    "resource_group_name" = "example-resources-02"
    "location"            = "East Europe"

  }

}


#...........Virtual Network Values...........
virtual_networks = {

  "vn_01" = {

    "virtual_network_name"          = "example-vnet-01"
    "virtual_network_address_space" = ["10.0.0.0/16"]

  },
  "vn_02" = {

    "virtual_network_name"          = "example-vnet-02"
    "virtual_network_address_space" = ["100.0.0.0/16"]


  }

}

#...........Subnet Values...........
subnets = {

  "sn_01" = {

    "subnet_name"             = "example-subnet-01"
    "subnet_address_prefixes" = ["10.1.0.0/24"]

  },
  "sn_02" = {

    "subnet_name"             = "example-subnet-02"
    "subnet_address_prefixes" = ["10.2.0.0/24"]

  }

}

#...........Network Interface Values...........#
network_interfaces = {

  "nic_01" = {

    "network_interface_name"                             = "example-nic-01"
    "nic_ip_configuration_name"                          = "testconfiguration"
    "nic_ip_configuration_private_ip_address_allocation" = "Dynamic"

  },
  "nic_02" = {

    "network_interface_name"                             = "example-nic-02"
    "nic_ip_configuration_name"                          = "internal"
    "nic_ip_configuration_private_ip_address_allocation" = "Static"

  }
}

#...........Virtual Machine Values...........#
virtual_machines = {

  "vm_01" = {

    "virtual_machine_name"                                       = "example-vm-01"
    "virtual_machine_vm_size"                                    = "Standard_DS1_v2"
    "vm_storage_image_reference_publisher"                       = "Canonical"
    "vm_storage_image_reference_offer"                           = "0001-com-ubuntu-server-jammy"
    "vm_storage_image_reference_sku"                             = "22_04-lts"
    "vm_storage_image_reference_version"                         = "latest"
    "vm_storage_os_disk_name"                                    = "myosdisk1"
    "vm_storage_os_disk_caching"                                 = "ReadWrite"
    "vm_storage_os_disk_create_option"                           = "FromImage"
    "vm_storage_os_disk_managed_disk_type"                       = "Standard_LRS"
    "vm_os_profile_computer_name"                                = "hostname"
    "vm_os_profile_admin_username"                               = "testadmin"
    "vm_os_profile_admin_password"                               = "Password1234!"
    "vm_os_profile_linux_config_disable_password_authentication" = false
    "vm_tags_environment"                                        = "dev"

    # Uncomment this line to delete the OS disk automatically when deleting the VM
    # "virtual_machine_delete_os_disk_on_termination"  = true

    # Uncomment this line to delete the data disks automatically when deleting the VM
    # "virtual_machine_delete_data_disks_on_termination"  = true

  },
  "vm_02" = {

    "virtual_machine_name"                                       = "example-vm-02"
    "virtual_machine_vm_size"                                    = "Standard_DS_v6"
    "vm_storage_image_reference_publisher"                       = "Canonical"
    "vm_storage_image_reference_offer"                           = "0001-com-ubuntu-server-jammy"
    "vm_storage_image_reference_sku"                             = "16.04-lts"
    "vm_storage_image_reference_version"                         = "latest"
    "vm_storage_os_disk_name"                                    = "myosdisk2"
    "vm_storage_os_disk_caching"                                 = "ReadWrite"
    "vm_storage_os_disk_create_option"                           = "FromImage"
    "vm_storage_os_disk_managed_disk_type"                       = "Standard_LRS"
    "vm_os_profile_computer_name"                                = "hostname"
    "vm_os_profile_admin_username"                               = "testadmin"
    "vm_os_profile_admin_password"                               = "Password1234!"
    "vm_os_profile_linux_config_disable_password_authentication" = false
    "vm_tags_environment"                                        = "staging"

    # Uncomment this line to delete the OS disk automatically when deleting the VM
    # "virtual_machine_delete_os_disk_on_termination"  = true

    # Uncomment this line to delete the data disks automatically when deleting the VM
    # "virtual_machine_delete_data_disks_on_termination"  = true

  }

}

