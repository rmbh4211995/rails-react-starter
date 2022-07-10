class ApiController < ApplicationController
  before_action :set_format

  def set_format
    request.format = :json
  end
end