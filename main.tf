resource "aws_cognito_user_pool" "user_pool" {
  name = var.name
  mfa_configuration = var.mfa_configuration
  # alias_attributes = var.signin_option
  username_attributes = var.signin_option


  schema {        
      attribute_data_type      = "String"
      name                     = "email"
      required                 = true
    }

  email_configuration {
    # configuration_set = "cognito"
    email_sending_account  = var.email_sending_account
    reply_to_email_address = var.reply_to_email
  }
   account_recovery_setting {
    recovery_mechanism {
      name     = "verified_email"
      priority = 1
    }

    recovery_mechanism {
      name     = "verified_phone_number"
      priority = 2
    }
  }
  lifecycle {
    ignore_changes = [tags]
  }

}

resource "aws_cognito_user_pool_client" "client" {
  name = var.user_pool_client_name
  user_pool_id = aws_cognito_user_pool.user_pool.id
  token_validity_units =var.token_validity_units
}

