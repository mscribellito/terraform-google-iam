locals {

  resources = ["project", "storage_bucket"]

  bindings_by_resource = {
    for resource in local.resources : resource => [
      for binding in var.bindings : binding if split("=>", binding.resource[0])[0] == resource
    ]
  }

}

module "project" {
  source = "./modules/project"

  for_each = { for i, binding in local.bindings_by_resource.project : i => binding }

  bindings = each.value
}

module "storage_bucket" {
  source = "./modules/storage_bucket"

  for_each = { for i, binding in local.bindings_by_resource.storage_bucket : i => binding }

  bindings = each.value
}
