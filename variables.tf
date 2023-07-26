#====================#
# vCenter connection #
#====================#

variable "vsphere_vcenter" {
  description = "vCenter server FQDN or IP"
  type        = string
}

variable "vsphere_unverified_ssl" {
  description = "Is the vCenter using a self signed certificate (true/false)"
  type        = string
}

variable "vsphere_datacenter" {
  description = "name of the vsphere datacenter"
  type        = string
}

variable "vsphere_cluster" {
  description = "name of the vsphere cluster"
  type        = string
}

variable "vsphere_username" {
  description = "username of the vsphere server"
  type        = string
}

variable "vsphere_password" {
  description = "password for the vsphere server user"
  type        = string
}

variable "vm_datastore" {
  description = "name of the vm datastore"
  type        = string
}

variable "vm_network" {
  description = "name of the  vm_network"
  type        = string
}


variable "vm_template" {
  description = "name of the vm template"
  type        = string
}

variable "vm_domain" {
  description = "name of the vm domain"
  type        = string
}
