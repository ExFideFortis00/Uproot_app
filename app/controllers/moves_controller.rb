require 'pry'
class MovesController < ApplicationController

#GET    /users
  def index
    @moves = current_user.moves
  end

#GET    /users/new
  def new
    @move = Move.new
  end

#POST   /users
  def create
    @move = Move.new(move_params)
    current_user.moves << @move
    if @move.save
        redirect_to("/moves")
      else
        # render the new.html.erb file with @user
          render :new
      end
    end

#GET    /users/:id
  def show
    @move = Move.find_by(id: params[:id])
  end

#GET    /users/:id/edit
#PUT    /users/:id
  def edit
    @move = Move.find(params[:id])
  end

  def update
    @move = Move.find(params[:id])
    @move.update(move_params)
    redirect_to moves_path
  end

#DELETE /users/:id
  def destroy
    move = Move.find(params[:id])
    move.destroy
    redirect_to moves_path
  end


  private

    def move_params
      params.require(:move).permit(
      :name,
      :description,
      :start_address,
      :start_city,
      :start_state,
      :start_zip,
      :target_address,
      :target_city,
      :target_state,
      :target_zip,
      :target_budget,
      :move_out_date,
      :move_in_date
    )
  end
end