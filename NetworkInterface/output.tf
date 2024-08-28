output "network_interface_name_OUT" {
	value = azurerm_network_interface.network_interface.name
	description = "The value of the name of the network interface"
}

output "network_interface_ids_OUT" {
	value = [azurerm_network_interface.network_interface.id]
	description = "The list of the IDs of the network interface"
}

