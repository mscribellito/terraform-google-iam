module "helper" {
  source = "../helper"

  bindings = var.bindings
}

resource "google_project_iam_member" "project" {
  for_each = { for k, v in module.helper.bindings : k => v }

  project = each.value.resource
  role    = each.value.role
  member  = each.value.member
}
