Knock.setup do |config|
  config.token_lifetime = 5.days

  config.token_secret_signature_key = -> { Rails.application.credentials.secret_key_base }
end
