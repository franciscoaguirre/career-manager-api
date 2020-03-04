module Api
  module V1
    module Users
      class SessionsController < Devise::SessionsController
        include CorsHeaders
      end
    end
  end
end
