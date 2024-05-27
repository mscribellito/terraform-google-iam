locals {

  project_policies = [
    for policy in var.policies : policy if split("=>", policy.resource[0])[0] == "project"
  ]

}

module "project" {
  source = "./modules/project"

  for_each = { for i, policy in local.project_policies : "binding-${i + 1}" => policy }

  member   = each.value.member
  role     = each.value.role
  resource = each.value.resource
}
