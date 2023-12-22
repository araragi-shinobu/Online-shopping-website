class ApplicationController < ActionController::Base
    # before_action :authorized
  
    private
  
    def authorized
      unless session[:user_id]
        redirect_to logon_path, alert: "You must be logged in to access this page."
      end
    end
  end
  