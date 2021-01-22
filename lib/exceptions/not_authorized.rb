# frozen_string_literal: true

module Exceptions
  # Base Json Api Exception
  class NotAuthorized < Base
    def errors
      {
        code: 401,
        status: :unauthorized,
        title: 'Not Authorized',
        detail: @exception,
        id: 401
      }
    end
  end
end

