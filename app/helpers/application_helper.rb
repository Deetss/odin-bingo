module ApplicationHelper
    def user_is_admin?
        return current_user.admin
    end
end
