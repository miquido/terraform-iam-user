resource "aws_iam_user" "this" {
  name          = var.name
  force_destroy = true

  tags = merge(
    {
      "Company" = var.company
      "Role"    = var.role
    },
    var.additional_tags,
  )
}

resource "aws_iam_user_group_membership" "this" {
  count      = length(var.groups) > 0 ? 1 : 0
  user       = aws_iam_user.this.name
  groups     = var.groups
  depends_on = [aws_iam_user.this]
}
