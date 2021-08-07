class PagesController < ApplicationController
  def homepage
    render json: { success: 'hello from the other side' }
  end
end
