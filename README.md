# Terraform Google Cloud IAM Policy Module

This module makes it easier to manage IAM policies for resources on Google Cloud.

## Features

Support for:

- Project
- Storage Bucket

## Usage

An IAM policy consists of multiple bindings. Bindings consist of `member`, `role`, and `resource`.

`member` - The [principals](https://cloud.google.com/iam/docs/principal-identifiers) that will be granted the privileges in the role. Principals are users, service accounts, groups, etc.

`role` - The [roles](https://cloud.google.com/iam/docs/understanding-roles) that will be granted to the members.

`resource` - The resources to bind the IAM policy to. Each binding should be scoped to resources of the same type. Resources are identified using the convention `resource_type=>resource_identifier`.

```hcl
module "policy" {
  source = "github.com/mscribellito/terraform-google-iam-policy"

  bindings = [
    {
      member = [
        "user:user@domain.com",
        "group:admins@domain.com"
      ]
      role = [
        "roles/owner"
      ]
      resource = [
        "project=>project1",
        "project=>project2"
      ]
    },
    {
      member = [
        "serviceAccount:gitlab@domain.com"
      ]
      role = [
        "roles/storage.objectCreator"
      ]
      resource = [
        "storage_bucket=>backups"
      ]
    }
  ]
}
```

### Resource Types and Identifiers

| Type | Identifier |
| ---- | ---------- |
| project | Project Id |
| storage_bucket | Storage bucket name |

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_project"></a> [project](#module\_project) | ./modules/project | n/a |
| <a name="module_storage_bucket"></a> [storage\_bucket](#module\_storage\_bucket) | ./modules/project | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_policies"></a> [policies](#input\_policies) | IAM policy document for Google Cloud IAM resources | <pre>list(object({<br>    member   = list(string)<br>    role     = list(string)<br>    resource = list(string)<br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_helper"></a> [helper](#output\_helper) | n/a |
<!-- END_TF_DOCS -->

## Contributing

Pull requests are welcome. For major changes, please open an issue first
to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

[MIT](https://choosealicense.com/licenses/mit/)
