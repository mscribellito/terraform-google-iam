# Terraform Module Template

A GitHub **repository template** for scaffolding Terraform module creation using HashiCorp's recommended [standard structure](https://developer.hashicorp.com/terraform/language/modules/develop/structure).

## Features

- Checks if Terraform code is properly formatted and validate with [setup-terraform](https://github.com/hashicorp/setup-terraform).
- Generates documentation of Terraform code with [terraform-docs](https://github.com/terraform-docs/terraform-docs).
- Performs static analysis of Terraform code with [tfsec](https://github.com/aquasecurity/tfsec).
- Automates creating GitHub releases with [semantic-release](https://github.com/semantic-release/semantic-release).

## Usage

Use this template to scaffold a new Terraform module. Ensure you change the following:

- Update [README.md](README.md) with description and usage.
- Add Terraform code to [main.tf](main.tf), [variables.tf](variables.tf), and [outputs.tf](outputs.tf).

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
