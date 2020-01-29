variable "name" {
  type        = string
  description = "Desired name for the IAM user. We recommend using email addresses."
}

variable "company" {
  default     = "Miquido"
  description = "Value for the Company tag on IAM User."
}

variable "role" {
  type        = string
  description = "Value for the Role tag on IAM User."
}

variable "groups" {
  description = "List of IAM user groups this user should belong to in the account"
  type        = list(string)
  default     = []
}

variable "additional_tags" {
  type        = map(string)
  default     = {}
  description = "Additional tags to apply on all created resources"
}

