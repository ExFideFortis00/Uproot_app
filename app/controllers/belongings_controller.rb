class BelongingsController < ApplicationController

#GET    /belongings

  def index
    if params[:move_id]
      render :text => "Got move id #{params[:move_id]}"
      @belongings = Belonging.where(move_id: params[:move_id])
    else
      render :text => "No move id."
    end

  end


#GET    /belongings/new
  def new
    @belonging = Belonging.new
  end

#POST   /belongings
  def create
    @belonging = Belonging.new(belonging_params)
    @belonging.move_id = current_user.moves(params[:id])
    if @belonging.save
        redirect_to("/moves/:move_id/belongings")
      else
        # render the new.html.erb file with @user
          render :new
      end
  end


#GET    /belongings/:id/edit
#PUT    /belongings/:id
  def edit
  end

#DELETE /belongings/:id
  def destroy
  end

  private

    def belonging_params
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