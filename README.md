<!-- This file was automatically generated by the `build-harness`. Make all changes to `README.yaml` and run `make readme` to rebuild this file. -->
[![Miquido][logo]](https://www.miquido.com/)

# miquido-iam-user
The module allows to quickly provision IAM users and attach to specific IAM groups
---
**Terraform Module**


GitLab Repository: https://gitlab.com/miquido/terraform/miquido-iam-user

## Usage

```hcl
module "iam-user-konrad-obal" {
  source = "./modules/iam-user"

  name            = "konrad.obal@miquido.com"
  role            = "DevOps"
  groups          = ["${local.iam_group_devops}"]
  additional_tags = "${var.tags}"
}
```
<!-- markdownlint-disable -->
## Makefile Targets
```text
Available targets:

  help                                Help screen
  help/all                            Display help for all targets
  help/short                          This help short screen
  lint                                Lint Terraform code

```
<!-- markdownlint-restore -->
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


## Developing

1. Make changes in terraform files

2. Regenerate documentation

    ```bash
    bash <(git archive --remote=git@gitlab.com:miquido/terraform/terraform-readme-update.git master update.sh | tar -xO)
    ```

3. Run lint

    ```
    make lint
    ```

## Copyright

Copyright © 2017-2022 [Miquido](https://miquido.com)



### Contributors

|  [![Konrad Obal][k911_avatar]][k911_homepage]<br/>[Konrad Obal][k911_homepage] |
|---|

  [k911_homepage]: https://github.com/k911
  [k911_avatar]: https://github.com/k911.png?size=150



  [logo]: https://www.miquido.com/img/logos/logo__miquido.svg
  [website]: https://www.miquido.com/
  [gitlab]: https://gitlab.com/miquido
  [github]: https://github.com/miquido
  [bitbucket]: https://bitbucket.org/miquido

