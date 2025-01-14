class UsersController < ApplicationController
    # has to be shown only for admin
    def index
        @users = User.all.order(:id)
    end
    def edit
        @user = User.find(params[:id])
    end

    def show
        @user = User.find(params[:id])
    end

    def destroy
        User.find(params[:id]).destroy
        redirect_to user_path
    end

    private
    def user_params
        params.require(:user).permit(:email, :username, :years_exp, :name, :prog_lang, :country)
    end

end