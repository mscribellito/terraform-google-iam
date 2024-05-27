module "helper" {
  source = "../helper"

  bindings = var.bindings
}

resource "google_storage_bucket_iam_member" "storage_bucket" {
  for_each = { for k, v in module.helper.bindings : k => v }

  bucket = each.value.resource
  role   = each.value.role
  member = each.value.member
}
