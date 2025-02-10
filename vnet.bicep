param vnetName string = 'myVnet' // Default name for the VNet
param location string = 'East US' // Default location for the VNet
param addressPrefix string = '10.0.0.0/16' // Address range for the VNet
param subnetName string = 'mySubnet' // Name of the subnet
param subnetPrefix string = '10.0.1.0/24' // Address range for the subnet

// Virtual Network Resource
resource vnet 'Microsoft.Network/virtualNetworks@2023-05-01' = {
  name: vnetName
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [
        addressPrefix
      ]
    }
    subnets: [
      {
        name: subnetName
        properties: {
          addressPrefix: subnetPrefix
        }
      }
    ]
  }
}
