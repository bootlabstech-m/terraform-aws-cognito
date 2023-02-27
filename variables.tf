variable "user_pool_name" {
  description = "The name of the user pool"
  type        = string
}
variable "mfa_configuration" {
  description = "mfa_configuration"
  type        = string
}
variable "email_sending_account" {
  description = "email_sending_account"
  type        = string
}

variable "user_pool_client_name" {
  description = "user_pool_client_name"
  type        = string
}

variable "reply_email" {
    description = "this is email id of from to  masg"
    type=string
}
variable "region" {
    description = "AWS Region"
    type = string
}
variable "role_arn" {
   description = "mPaaS IAM ARN role"
   type = string
}