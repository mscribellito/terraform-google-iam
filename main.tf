locals {

  projects = [
    for policy in var.policies : policy if split("=>", policy.resource[0])[0] == "project"
  ]

  storage_buckets = [
    for policy in var.policies : policy if split("=>", policy.resource[0])[0] == "storage_bucket"
  ]

}

module "project" {
  source = "./modules/project"

  for_each = { for i, policy in local.projects : "binding-${i + 1}" => policy }

  bindings = each.value
}

module "storage_bucket" {
  source = "./modules/project"

  for_each = { for i, policy in local.storage_buckets : "binding-${i + 1}" => policy }

  bindings = each.value
}
