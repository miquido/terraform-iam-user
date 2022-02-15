<!-- markdownlint-disable -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_user.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user) | resource |
| [aws_iam_user_group_membership.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_group_membership) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_additional_tags"></a> [additional\_tags](#input\_additional\_tags) | Additional tags to apply on all created resources | `map(string)` | `{}` | no |
| <a name="input_company"></a> [company](#input\_company) | Value for the Company tag on IAM User. | `string` | `"Miquido"` | no |
| <a name="input_groups"></a> [groups](#input\_groups) | List of IAM user groups this user should belong to in the account | `list(string)` | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | Desired name for the IAM user. We recommend using email addresses. | `string` | n/a | yes |
| <a name="input_role"></a> [role](#input\_role) | Value for the Role tag on IAM User. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | The ARN assigned by AWS for this user |
| <a name="output_name"></a> [name](#output\_name) | IAM user name |
<!-- markdownlint-restore -->
