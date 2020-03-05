module Api
  module V1
    module Users
      class PasswordsController < Devise::PasswordsController
        include CorsHeaders
      end
    end
  end
end
