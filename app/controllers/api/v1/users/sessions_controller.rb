module Api
  module V1
    module Users
      class SessionsController < Devise::SessionsController
        include CorsHeaders

        skip_before_action :verify_signed_out_user
      end
    end
  end
end
