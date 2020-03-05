module Api
  module V1
    module Users
      class RegistrationsController < Devise::RegistrationsController
        include CorsHeaders
      end
    end
  end
end
