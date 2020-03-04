class ApplicationController < ActionController::API
  include ActionController::MimeResponds
  include CorsHeaders
  respond_to :json
  before_action :set_default_request_format

  protected

  def set_default_request_format
    request.format = :json unless params[:format]
  end
end
