<!-- markdownlint-disable -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13 |
| aws | >= 2.0 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 2.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| additional\_tags | Additional tags to apply on all created resources | `map(string)` | `{}` | no |
| company | Value for the Company tag on IAM User. | `string` | `"Miquido"` | no |
| groups | List of IAM user groups this user should belong to in the account | `list(string)` | `[]` | no |
| name | Desired name for the IAM user. We recommend using email addresses. | `string` | n/a | yes |
| role | Value for the Role tag on IAM User. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| arn | The ARN assigned by AWS for this user |
| name | IAM user name |

<!-- markdownlint-restore -->
