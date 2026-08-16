variable "aws_region" {
  description = "AWS region where infrastructure should be provisioned."
  type        = string
  default     = "us-east-1"
}

variable "iam_username" {
  description = "Name of the IAM user."
  type        = string
  default     = "Ravi-terraform"
}

