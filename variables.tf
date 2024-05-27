variable "policies" {
  type = list(object({
    member   = list(string)
    role     = list(string)
    resource = list(string)
  }))
  description = "IAM policy document for Google Cloud IAM resources"
}
