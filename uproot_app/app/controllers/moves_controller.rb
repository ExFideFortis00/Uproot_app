class MovesController < ApplicationController

	def index
		@moves = Move.all
	end

	def new
		@move = Move.new
	end

	def create
		@move = Move.new(move_params)

		if @move.save
    		redirect_to("/moves")
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