# frozen_string_literal: true

class NotAuthorizedError < StandardError
  def initialize(message = 'Not authorized to perform this action', exception_type = 'custom')
    @exception_type = exception_type
    super(message)
  end
end
