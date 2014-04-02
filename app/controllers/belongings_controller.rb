class BelongingsController < ApplicationController

#GET    /belongings

  def index
      @move = Move.find(params[:move_id])
      @belongings = Belonging.where(move_id: params[:move_id])
  end


#GET    /belongings/new
  def new
    @move = Move.find(params[:move_id])
    @belonging = Belonging.new
  end

#POST   /belongings
  def create
    @move = Move.find(params["belonging"]["move_id"].to_i)
    @belonging = Belonging.new(belonging_params)
    @move.belongings << @belonging


    # @belonging.move_id = current_user.moves(params[:id])
    # @move << @belonging.move_id
    if @belonging.save
        redirect_to move_path(@move.id)
      else
        # render the new.html.erb file with @user
          render :new
      end
  end

  def update
    @belonging = Belonging.find(params[:id])
    @belonging.update(belonging_params)
    redirect_to move_path(@belonging.move_id)
  end


#GET    /belongings/:id/edit
#PUT    /belongings/:id
  def edit
    @belonging = Belonging.find(params[:id])

  end

#DELETE /belongings/:id
  def destroy
    belonging = Belonging.find(params[:id])
    move_id = belonging.move_id
    belonging.destroy
    redirect_to move_path(move_id)
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