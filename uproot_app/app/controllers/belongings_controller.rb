class BelongingsController < ApplicationController

	def index
		@belongings = Belonging.all
	end

	def new
		@belonging = Belonging.new
	end

	def create
		@belonging = Belonging.new(belonging_params)

		if @belonging.save
    		redirect_to("/belongings")
    	else
      	# render the new.html.erb file with @user
      		render :new
    	end
	end

	def destroy
	end

	private

  	def move_params
  		params.require(:belonging).permit(
  			:name,
  			:kind_of,
  			:picture_url,
  			:current_room,
  			:target_room,
  			:condition
  			)
  	end
end