class MainController < ApplicationController
    def index
    #    flash.now[:notice] = "Hi this is notice for you" 
    #    flash.now[:alert] = "This is alert for you"
    if session[:user_id]
        @user = User.find_by(id: session[:user_id])
    end
    end
    
end