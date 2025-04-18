variable "key_vault_name" {
  description = "Nom unique du Key Vault"
  type        = string
}

variable "resource_group_name" {
  description = "Nom du Resource Group dans lequel créer le Key Vault"
  type        = string
}

variable "location" {
  description = "Région Azure pour le Key Vault"
  type        = string
}

variable "sku_name" {
  description = "SKU du Key Vault (standard ou premium)"
  type        = string
}

variable "tags" {
  description = "Map de tags à appliquer au Key Vault"
  type        = map(string)
}

variable "tenant_id" {
  description = "ID du tenant Azure AD pour les access policies"
  type        = string
}

variable "object_id" {
  description = "Object ID du principal qui aura les droits data-plane"
  type        = string
}

variable "admin_object_id" {
  description = "Object ID of the admin user for the Key Vault"
  type        = string
}