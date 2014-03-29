class UsersController < ApplicationController
  def index
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
    if @user.save
      redirect_to("/")
    else
      # render the new.html.erb file with @user
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :first_name,
      :last_name,
      :email,
      :current_address,
      :city,
      :state,
      :zip,
      :password,
      :password_confirmation
    )
  end
end