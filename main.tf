resource "aws_cognito_user_pool" "user_pool" {
  name = var.name
  mfa_configuration = var.mfa_configuration
  username_attributes = var.signin_option

  schema {        
      attribute_data_type      = var.schema_attribute_data_type
      developer_only_attribute = var.schema_developer_only_attribute
      mutable                  = var.shema_mutable
      name                     = var.schema_name
      required                 = var.shema_required
    }

  email_configuration {
    # configuration_set = "cognito"
    email_sending_account  = var.email_sending_account
    reply_to_email_address = var.reply_to_email
  }
   account_recovery_setting {
    recovery_mechanism {
      name     = var.recovery_mechanism_name
      priority = var.recovery_mechanism_priority
    }

    recovery_mechanism {
      name     = var.recovery_mechanism_name2
      priority = var.recovery_mechanism_priority2
    }
  }
  admin_create_user_config {
      allow_admin_create_user_only = var.allow_admin_create_user_only
  }
  password_policy {
       minimum_length                   = 8 
       require_lowercase                = true
       require_numbers                  = true 
       require_symbols                  = true 
       require_uppercase                = true 
       temporary_password_validity_days = 7
  }
  verification_message_template {
    default_email_option = var.default_email_option
        }
  lifecycle {
    ignore_changes = [tags ]
  }

}

resource "aws_cognito_user_pool_client" "client" {
  name = var.user_pool_client_name
  user_pool_id = aws_cognito_user_pool.user_pool.id
  lifecycle {
    ignore_changes = [ token_validity_units ]
  }
}

