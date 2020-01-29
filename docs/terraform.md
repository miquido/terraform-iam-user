## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| additional_tags | Additional tags to apply on all created resources | map(string) | `<map>` | no |
| company | Value for the Company tag on IAM User. | string | `Miquido` | no |
| groups | List of IAM user groups this user should belong to in the account | list(string) | `<list>` | no |
| name | Desired name for the IAM user. We recommend using email addresses. | string | - | yes |
| role | Value for the Role tag on IAM User. | string | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| arn | The ARN assigned by AWS for this user |
| name | IAM user name |

