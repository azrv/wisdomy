# frozen_string_literal: true

# user_token#create for creating jwt token
class UserTokenController < Knock::AuthTokenController
  skip_before_action :verify_authenticity_token, raise: false
end
