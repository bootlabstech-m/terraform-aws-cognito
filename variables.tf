variable "name" {
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
variable "schema_attribute_data_type" {
  description = "Data type of the user attribute (String, Number, DateTime, Boolean)"
  type        = string
  default     = "String"
}
variable "schema_name" {
  description = "Name of the custom or standard user attribute"
  type        = string
  default     = "email"
}
variable "shema_required" {
  description = "Whether the attribute is required or not"
  type        = bool
  default     = true
}
variable "recovery_mechanism_name" {
  description = "First recovery mechanism name (e.g., verified_email, verified_phone_number)"
  type        = string
  default     = "verified_email"
}

variable "recovery_mechanism_priority" {
  description = "Priority for the first recovery mechanism"
  type        = number
  default     = 1
}
variable "recovery_mechanism_name2" {
  description = "Second recovery mechanism name (e.g., verified_phone_number)"
  type        = string
  default     = "verified_phone_number"
}
variable "recovery_mechanism_priority2" {
  description = "Priority for the second recovery mechanism"
  type        = number
  default     = 2
}
variable "schema_developer_only_attribute" {
  description = "Whether the attribute is developer-only"
  type        = bool
  default     = false
}
variable "shema_mutable" {
  description = "Whether the attribute is mutable after user creation"
  type        = bool
  default     = false
}

variable "allow_admin_create_user_only" {
  description = "Whether only admins can create users"
  type        = bool
  default     = true
}
variable "default_email_option" {
  description = "Default email option for user verification (CONFIRM_WITH_CODE or CONFIRM_WITH_LINK)"
  type        = string
  default     = "CONFIRM_WITH_CODE"
}

# variable "token_validity_units" {
#   description = "value"
#   type = map(string) 
# }