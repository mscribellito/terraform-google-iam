locals {

  resources = ["project", "storage_bucket"]

  bindings_by_resource = { for k, v in local.resources : v => [
    for binding in var.bindings : binding if split("=>", binding.resource[0])[0] == v
  ] }

}

module "project" {
  source = "./modules/project"

  for_each = { for i, binding in local.bindings_by_resource.project : "binding-${i + 1}" => binding }

  bindings = each.value
}

module "storage_bucket" {
  source = "./modules/storage_bucket"

  for_each = { for i, binding in local.bindings_by_resource.storage_bucket : "binding-${i + 1}" => binding }

  bindings = each.value
}
