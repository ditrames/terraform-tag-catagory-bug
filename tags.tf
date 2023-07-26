resource "vsphere_tag_category" "default" {
  name        = "terraform-category"
  cardinality = "SINGLE" # CHANGE THIS TO "MULTIPLE" REPRODUCE!!!
  description = "Managed by Terraform"

  associable_types = [
    "VirtualMachine",
  ]
}

resource "vsphere_tag" "test" {
  name        = "test"
  category_id = vsphere_tag_category.default.id
  description = "test tag"
}
