provider "aws" {
  region = "us-east-1"
}

module "test-iam-user" {
  source = "../../"

  name = "jan.kowalski@miquido.com"
  role = "CTO"
  # groups = [
  #   module.iam-group-everyone.group_name,
  # ]
}
