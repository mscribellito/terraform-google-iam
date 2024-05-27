variable "bindings" {
  type = object({
    member   = list(string)
    role     = list(string)
    resource = list(string)
  })
  description = "List of member, role, and resource bindings"
}
