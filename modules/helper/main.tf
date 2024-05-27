locals {

  bindings = distinct(flatten([
    for member in var.member
    : [
      for role in var.role
      : [
        for resource in var.resource
        : {
          member   = member
          role     = role
          resource = split("=>", resource)[1]
        }
      ]
    ]
  ]))

}
