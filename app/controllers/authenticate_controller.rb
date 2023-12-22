class AuthenticateController < ApplicationController
    # Display the login form
    def logon
      # Typically, no additional code is needed here
      # The view will render app/views/authenticate/logon.html.erb
    end
  
    # Process the login form submission
    def checkpassword
      # Find the user by userid
      @user = User.find_by(userid: params[:userid])
  
      # Authenticate the user
      if @user && @user.authenticate(params[:password])
        # Set the user ID in the session to log them in
        session[:user_id] = @user.id
        redirect_to products_url, notice: "Logged in successfully"
      else
        # Redirect back to the logon page with an error message
        redirect_to logon_path, alert: "Invalid userid or password"
      end
    end
  
    # Log the user out
    def logout
      # Clear the user ID from the session
      session[:user_id] = nil
      redirect_to logon_path, notice: "Logged out successfully"
    end
  end
  