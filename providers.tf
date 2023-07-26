#===============================================================================
# vSphere Provider
#===============================================================================


terraform {
  required_providers {
    vsphere = {
      source  = "hashicorp/vsphere"
      version = "2.4.1"
    }

  }
}




# Configure the vSphere Provider
provider "vsphere" {
  vsphere_server = var.vsphere_vcenter
  user           = var.vsphere_username
  password       = var.vsphere_password

  allow_unverified_ssl = var.vsphere_unverified_ssl
}
