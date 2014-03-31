class MovesController < ApplicationController

#GET    /users/:user_id/moves
	def index
		@moves = current_user.moves
	end

#GET    /users/:user_id/moves/new
	def new
		@move = Move.new
	end

#POST   /users/:user_id/moves
	def create
		@move = Move.new(move_params)
        current_user.moves << @move
    if @move.save
    		redirect_to(user_moves_path(current_user))
    	else
      	# render the new.html.erb file with @user
      		render :new
    	end
    end

#GET    /users/:user_id/moves/:id
  def show
    @move = Move.find_by(id: params[:id])
  end

#GET    /users/:user_id/moves/:id/edit
#PUT    /users/:user_id/moves/:id
  def edit
  end

#DELETE /users/:user_id/moves/:id(.:format)
	def destroy
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