# Autenticación Azure

variable "subscription_id" {
  description = "Identificador de la suscripción de Azure donde se desplegarán los recursos."
  type        = string
  sensitive   = true
}

variable "tenant_id" {
  description = "Identificador del tenant de Azure AD asociado a la suscripción."
  type        = string
  sensitive   = true
}

variable "location" {
  description = "Región de Azure en la que se aprovisionará la infraestructura."
  type        = string
  default     = "spaincentral"
}

variable "resource_group_name" {
  description = "Nombre del grupo de recursos principal que contendrá la infraestructura."
  type        = string
  default     = "resource_group-cp2"
}

# Red y Máquina Virtual

variable "vnet_name" {
  description = "Nombre de la red virtual del entorno CP2."
  type        = string
  default     = "vnet-cp2"
}

variable "vnet_address_space" {
  description = "Rango CIDR principal asignado a la red virtual."
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_name" {
  description = "Nombre de la subred donde se desplegará la máquina virtual."
  type        = string
  default     = "snet-vm"
}

variable "subnet_address_prefixes" {
  description = "Rangos CIDR configurados dentro de la subred."
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "nsg_name" {
  description = "Nombre del Network Security Group asociado a la subred o a la VM."
  type        = string
  default     = "nsg-vm-cp2"
}

variable "public_ip_name" {
  description = "Nombre del recurso de IP pública asignado a la máquina virtual."
  type        = string
  default     = "pip-vm-CP2"
}

variable "nic_name" {
  description = "Nombre de la interfaz de red conectada a la máquina virtual."
  type        = string
  default     = "nic-vm-cp2"
}

variable "vm_name" {
  description = "Identificador de la máquina virtual Linux."
  type        = string
  default     = "vm-cp2"
}

variable "vm_size" {
  description = "SKU o tamaño de la máquina virtual en Azure."
  type        = string
  default     = "Standard_B2s_v2"
}

variable "vm_admin_username" {
  description = "Usuario administrador configurado para el acceso a la VM."
  type        = string
  default     = "azureuser"
}

# ACR y AKS

variable "acr_name" {
  description = "Nombre del Azure Container Registry donde se almacenarán las imágenes."
  type        = string
  default     = "acrmiguelferrercp2"
}

variable "aks_name" {
  description = "Nombre del clúster administrado de Kubernetes (AKS)."
  type        = string
  default     = "aks-cp2"
}

variable "aks_dns_prefix" {
  description = "Prefijo DNS asociado al endpoint del API Server de AKS."
  type        = string
  default     = "aks-cp2"
}

variable "aks_sku_tier" {
  description = "Nivel de servicio configurado para el clúster AKS."
  type        = string
  default     = "Standard"
}

variable "aks_node_count" {
  description = "Número inicial de nodos en el node pool por defecto."
  type        = number
  default     = 1
}

variable "aks_vm_size" {
  description = "Tamaño de máquina virtual utilizado por los nodos del clúster AKS."
  type        = string
  default     = "Standard_B2s_v2"
}