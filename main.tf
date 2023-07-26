module "test" {
  count  = 1
  source = "./modules/vsphere_vm"

  vsphere_cluster    = var.vsphere_cluster
  vm_name            = "test"
  vm_hostname        = "test"
  vm_template        = var.vm_template
  vsphere_datacenter = var.vsphere_datacenter
  vm_domain          = var.vm_domain
  vm_tags            = [vsphere_tag.test.id]



  # vsphere_cluster = var.vsphere_cluster
  vm_datastore = var.vm_datastore
  network_spec = {
    network_id = var.vm_network
  }
  spec = {
    cpu       = 2
    memory    = 5120
    disk_size = 16
    additional_disks = [
      {
        size = 25
      }
    ]
  }
}
