class ApplicationController < ActionController::Base
    def user_is_admin?
        return current_user.admin
    end
end
