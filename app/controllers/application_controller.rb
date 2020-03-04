class ApplicationController < ActionController::API
  include ActionController::MimeResponds
  respond_to :json
  before_action :set_default_request_format
  include CorsHeaders

  protected

  def set_default_request_format
    request.format = :json unless params[:format]
  end
end
