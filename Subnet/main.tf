resource "azurerm_subnet" "subnet" {
	name = var.subnet_name
	address_prefixes =  var.subnet_address_prefixes
	virtual_network_name = var.virtual_network_name
	resource_group_name = var.resource_group_name

	delegation {
    name = "delegation"

    service_delegation {
		name    = "Microsoft.ContainerInstance/containerGroups"
		actions = ["Microsoft.Network/virtualNetworks/subnets/join/action", "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action"]
		}
	}
}