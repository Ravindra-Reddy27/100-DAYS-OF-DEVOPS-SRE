output "iam_username" {
  description = "Name of the IAM User"
  value       = aws_iam_user.terraform_user.name
}

output "iam_password" {
  description = "Name of the IAM User"
  value       = aws_iam_user_login_profile.terraform_user_login.password
  sensitive   = true
}