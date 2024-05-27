locals {

  bindings = distinct(flatten([
    for member in var.bindings.member
    : [
      for role in var.bindings.role
      : [
        for resource in var.bindings.resource
        : {
          member   = member
          role     = role
          resource = split("=>", resource)[1]
        }
      ]
    ]
  ]))

}
