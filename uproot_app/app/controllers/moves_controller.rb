class MovesController < ApplicationController

	def index
	end

	def new
		@move = Move.new
	end

	def create
		@move = Move.new(move_params)
		@current_user = params[:user_id]
		@budget = params[:budget]
		@budget = 0
    	if @move.save
    		redirect_to("/users")
    	else
      	# render the new.html.erb file with @user
      		render :new
    	end
    end

	def destroy
	end

	private

	def move_params
		params.require(:move).permit(
			:start_location,
			:target_location,
			:description,
			:user_id,
			:budget
			)
	end
end