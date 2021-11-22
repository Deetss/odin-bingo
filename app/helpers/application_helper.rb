module ApplicationHelper
    def user_is_admin?
        return current_user.admin
    end

    def getUserImage
        if current_user.image.nil?
            return
        else
            return image_tag current_user.image unless current_user.image
        end
    end
end
