class SessionsController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.find_by(
            email: params[:user][:email],
            password_digest: params[:user][:password_digest]
        )


        if @user.present?
             @user.id = (session[:user_id])
            redirect_to root_path, notice: 'Has iniciado sesion'
        else 
            redirect_to root_path, notice: 'No se pudo iniciar sesion'
        end
    end


    private
    def user_params
        params.require(:user).permit(:name, :email, :password_digest)
    end

end
