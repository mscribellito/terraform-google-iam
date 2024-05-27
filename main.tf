locals {

  projects = [
    for binding in var.bindings : binding if split("=>", binding.resource[0])[0] == "project"
  ]

  storage_buckets = [
    for binding in var.bindings : binding if split("=>", binding.resource[0])[0] == "storage_bucket"
  ]

}

module "project" {
  source = "./modules/project"

  for_each = { for i, binding in local.projects : "binding-${i + 1}" => binding }

  bindings = each.value
}

module "storage_bucket" {
  source = "./modules/storage_bucket"

  for_each = { for i, binding in local.storage_buckets : "binding-${i + 1}" => binding }

  bindings = each.value
}
