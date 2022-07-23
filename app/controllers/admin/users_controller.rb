class Admin::UsersController < ApplicationController
  def new
      @user = User.new
  end
  
  def create
      @user = User.new(user_params)
      
      if @user.save
          redirect_to admin_user_url(@user), notice: "ユーザー「@{@user.name}」を登録しました。"
      else
          render :new
      end
  end

  def edit
  end

  def show
  end

  def index
  end
  
  private
  
  def user_params
      prams.require(:user).parmit(:name, :email, :admin, :password, :password_confirmation)
  end
  
end
