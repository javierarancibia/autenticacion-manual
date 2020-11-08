class UsersController < ApplicationController

    def new
       @user = User.new     
    end

    def create
        @user = User.new(user_params)
        if @user.save
            @user.id = (session[:user_id])
            redirect_to root_path
        else 
            render :new, alert: 'The user could not be saved'
        end
    end


    


    private
    def user_params
        params.require(:user).permit(:name, :email, :password_digest)
    end
end
