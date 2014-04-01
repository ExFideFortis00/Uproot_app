class UsersController < ApplicationController

#GET    /users/new
  def new
  	@user = User.new
  end

#POST   /users
  def create
  	@user = User.new(user_params)
    if @user.save
      redirect_to("/")
    else
      # render the new.html.erb file with @user
      render :new
    end
  end

#GET    /users/:id/edit
  def edit
  end

#DELETE /users/:id
  def destroy
  end

  private

  def user_params
    params.require(:user).permit(
      :first_name,
      :last_name,
      :email,
      :password,
      :password_confirmation
    )
  end
end