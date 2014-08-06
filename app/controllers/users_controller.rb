class UsersController < ApplicationController
  def new

  end

  def create
    #render plain: params[:users].inspect

    @user=User.new(user_params)

    @user.save
    redirect_to @user

  end
def show
  @user = User.find(params[:id])
end
  def index
    @user = User.all
  end
  private
  def user_params
    params.require(:user).permit(:title,:text)
  end
end
