output "subnet_name_OUT" {
	value = azurerm_subnet.subnet.name
	description = "The value of the name of the subnet"
}

output "subnet_address_prefixes_OUT" {
	value = azurerm_subnet.subnet.address_prefixes
	description = "The value of the address prefixes of the subnet"
}

output "subnet_id_OUT" {
	value = azurerm_subnet.subnet.id
	description = "The value of the ID of the subnet"
}