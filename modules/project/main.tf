module "helper" {
  source = "../helper"

  member   = var.member
  role     = var.role
  resource = var.resource
}

resource "google_project_iam_member" "project" {
  for_each = { for k, v in module.helper.bindings : k => v }

  project = each.value.resource
  role    = each.value.role
  member  = each.value.member
}
