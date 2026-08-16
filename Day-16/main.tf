resource "aws_iam_user" "terraform_user" {
  name = var.iam_username
  path = "/Learning/" # Simple way to organize IAM users into a folder-like hierarchy, it doesn't any powers like group,policy etc.
  force_destroy = true  # True = Terraform can clean up those user-associated resources first and then delete the IAM user.
}

resource "aws_iam_user_policy_attachment" "change_password" {
  user       = aws_iam_user.terraform_user.name
  policy_arn = "arn:aws:iam::aws:policy/IAMUserChangePassword" # At the login time User can add new password
}

resource "aws_iam_user_policy_attachment" "s3_full_access" {
  user       = aws_iam_user.terraform_user.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess" # This IAM User Can perform all S3 operations list,create,delete and modity
}


resource "aws_iam_user_login_profile" "terraform_user_login" {    # For console login
  user                    = aws_iam_user.terraform_user.name  
  password_reset_required = true 
}