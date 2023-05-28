variable "user_pool_name" {
  description = "The name of the user pool"
  type        = string
}

variable "mfa_configuration" {
  description = "Multi-Factor Authentication (MFA) configuration for the User Pool. Defaults of OFF"
  type        = string
  default = "OFF"
}

variable "signin_option" {
  type = list(string)
  description = "Whether email addresses or phone numbers can be specified as usernames when a user signs up. Valid values: phone_number, email"
}

variable "email_sending_account" {
  description = "Email delivery method to use. Valid values: COGNITO_DEFAULT DEVELOPER"
  type        = string
  default = "COGNITO_DEFAULT"
}

variable "from_email" {
  type = string
  description = "Sender's email address or sender's display name with their email address (e.g., john@example.com, John Smith <john@example.com>"
}

variable "reply_to_email" {
    description = "REPLY-TO email address."
    type=string
}

variable "region" {
    description = "AWS Region"
    type = string
}

variable "user_pool_client_name" {
  description = "user_pool_client_name"
  type        = string
}

variable "role_arn" {
   description = "mPaaS IAM ARN role"
   type = string
}