# Terraform Google Cloud IAM Policy Module

This module makes it easier to manage IAM policies for members, roles, and resources on Google Cloud.

## Features

Support for:

- Project
- Storage Bucket

## Usage

```hcl
```

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_project"></a> [project](#module\_project) | ./modules/project | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_policies"></a> [policies](#input\_policies) | IAM policy document for Google Cloud IAM resources | <pre>list(object({<br>    member   = list(string)<br>    role     = list(string)<br>    resource = optional(list(string))<br>  }))</pre> | n/a | yes |

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
