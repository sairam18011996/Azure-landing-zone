param keyVaultName string
param location string = resourceGroup().location

resource keyVault 'Microsoft.KeyVault/vaults@2023-02-01' = {
  name: keyVaultName
  location: location
  properties: {
    sku: {
      family: 'A'
      name: 'standard'  // This is the standard SKU, free-tier default.
    }
    tenantId: subscription().tenantId
    accessPolicies: []
  }
}

output keyVaultUri string = keyVault.properties.vaultUri
