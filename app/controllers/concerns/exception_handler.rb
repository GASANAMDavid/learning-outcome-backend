# frozen_string_literal: true

module ExceptionHandler
  extend ActiveSupport::Concern

  included do
    rescue_from ActiveRecord::RecordInvalid do |e|
      json_response({ errors: e.message }, :not_found)
    end

    rescue_from ActiveRecord::RecordNotUnique do |_e|
      json_response({ errors: "User with email: #{params[:user][:email]} already exists" }, :conflict)
    end
  end
end
