output "name" {
  description = "IAM user name"
  value       = aws_iam_user.this.name
}

output "arn" {
  description = "The ARN assigned by AWS for this user"
  value       = aws_iam_user.this.arn
}

