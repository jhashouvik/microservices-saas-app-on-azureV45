variable "key_vault_id" {
  description = "Id of the Key Vault secrets should be written to (see the 'secrets' resource below if present)"
  type        = string
}

variable "location" {
  description = "Azure region to deploy into"
  type        = string
  default     = "eastus"
}

variable "resource_group_name" {
  description = "Existing resource group to deploy into"
  type        = string
}

variable "tenant_id" {
  description = "Azure AD tenant id"
  type        = string
}

# >>> archly:group:vnet1 >>>
variable "vnet1_address_space" {
  description = "Address space for VNet 'VNet'"
  type        = string
  default     = "10.0.0.0/16"
}
# <<< archly:group:vnet1 <<<

# >>> archly:group:subnet1 >>>
variable "subnet1_address_prefix" {
  description = "Address prefix for subnet 'Application Subnet' (must fall within the VNet's address space)"
  type        = string
}
# <<< archly:group:subnet1 <<<

# >>> archly:group:subnet2 >>>
variable "subnet2_address_prefix" {
  description = "Address prefix for subnet 'Data Subnet' (must fall within the VNet's address space)"
  type        = string
}
# <<< archly:group:subnet2 <<<

# >>> archly:node:afd1 >>>
variable "afd1_cdn_profile_name" {
  description = "Name of an existing azurerm_cdn_profile"
  type        = string
}

variable "afd1_origin_host_name" {
  description = "Hostname of the origin this CDN serves"
  type        = string
}
# <<< archly:node:afd1 <<<

# >>> archly:node:containerapps1 >>>
variable "containerapps1_container_image" {
  description = "Container image to deploy, e.g. myrepo/app:latest"
  type        = string
}

variable "containerapps1_environment_id" {
  description = "Id of an existing Container Apps environment"
  type        = string
}
# <<< archly:node:containerapps1 <<<

# >>> archly:node:sql1 >>>
variable "sql1_administrator_login" {
  description = "Administrator login"
  type        = string
}

variable "sql1_administrator_password" {
  description = "Administrator password -- supply via TF_VAR_sql1_administrator_password, never commit"
  type        = string
  sensitive   = true
}
# <<< archly:node:sql1 <<<

# >>> archly:node:sql2 >>>
variable "sql2_administrator_login" {
  description = "Administrator login"
  type        = string
}

variable "sql2_administrator_password" {
  description = "Administrator password -- supply via TF_VAR_sql2_administrator_password, never commit"
  type        = string
  sensitive   = true
}
# <<< archly:node:sql2 <<<

# >>> archly:node:servicebus1 >>>
variable "servicebus1_servicebus_namespace_id" {
  description = "Id of an existing Service Bus namespace"
  type        = string
}
# <<< archly:node:servicebus1 <<<

# >>> archly:node:blob1 >>>
variable "blob1_storage_account_name" {
  description = "Globally-unique storage account name (lowercase, no dashes)"
  type        = string
}
# <<< archly:node:blob1 <<<