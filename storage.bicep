resource storageAccount 'Microsoft.Storage/storageAccounts@2023-05-01' = {
  name: 'storageaccountquickstart'
  location: 'West US'
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}
