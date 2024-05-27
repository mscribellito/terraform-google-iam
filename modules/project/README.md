<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_helper"></a> [helper](#module\_helper) | ../helper | n/a |

## Resources

| Name | Type |
|------|------|
| [google_project_iam_member.project](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_member) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_member"></a> [member](#input\_member) | n/a | `list(string)` | n/a | yes |
| <a name="input_resource"></a> [resource](#input\_resource) | n/a | `list(string)` | n/a | yes |
| <a name="input_role"></a> [role](#input\_role) | n/a | `list(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_helper"></a> [helper](#output\_helper) | n/a |
<!-- END_TF_DOCS -->