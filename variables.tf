variable "bindings" {
  type = list(object({
    member   = list(string)
    role     = list(string)
    resource = list(string)
  }))
  description = "IAM policy document bindings for Google Cloud IAM resources"
}
