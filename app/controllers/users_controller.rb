class UsersController < ApplicationController
  before_action :set_user
    def edit 
    end

    def update
      @user.update(user_params)
      redirect_to mypage_users_url
    end

    def mypage  
    end

  private
    def set_user
      @user = current_user
    end

    def user_params
      params.permit(:nickname, :email)
    end
end
