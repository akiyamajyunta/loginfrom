class ApplicationController < ActionController::Base


    protected

    def after_sign_in_path_for(resource)
      #new_user_session_path
      posts_path
    end

end
