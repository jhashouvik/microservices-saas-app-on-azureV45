# >>> archly:node:keyvault1 >>>
output "keyvault1_id" {
  description = "Key Vault id (reference this as key_vault_id elsewhere)"
  value       = azurerm_key_vault.keyvault1.id
  sensitive   = false
}
# <<< archly:node:keyvault1 <<<