class BelongingsController < ApplicationController

#GET    /users/:user_id/moves/:move_id/belongings
	def index
    @belongings = Belonging.find_by(id: params[:id])
	end

#GET    /users/:user_id/moves/:move_id/belongings/new(.:format)
	def new
		@belonging = Belonging.new
	end

#POST   /users/:user_id/moves/:move_id/belongings
	def create
		@belonging = Belonging.new(belonging_params)

		if @belonging.save
    		redirect_to("/users/#{:user.id}/moves/#{:move.id}/belongings")
    	else
      	# render the new.html.erb file with @user
      		render :new
    	end
	end

#GET    /users/:user_id/moves/:move_id/belongings/:id/edit
#PUT    /users/:user_id/moves/:move_id/belongings/:id
  def edit
  end

#DELETE /users/:user_id/moves/:move_id/belongings/:id
	def destroy
	end

	private

  	def move_params
  		params.require(:belonging).permit(
        :move_id,
  			:name,
  			:kind_of,
  			:picture_url,
  			:current_room,
  			:target_room,
  			:condition
  			)
  	end
end