resource "aws_cognito_user_pool" "user_pool" {
  name = var.user_pool_name
  mfa_configuration = var.mfa_configuration
  email_configuration {
    # configuration_set = "cognito"
    email_sending_account  = var.email_sending_account
  
    reply_to_email_address = var.reply_email
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

}

resource "aws_cognito_user_pool_client" "client" {
  name = var.user_pool_client_name
  user_pool_id = aws_cognito_user_pool.user_pool.id
}

