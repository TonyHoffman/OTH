class PlayersController < ApplicationController
  def create
   @franchise = Franchise.find(params[:franchise_id])
   @player = @franchise.players.create(params[:player])
   redirect_to edit_franchise_path(@franchise)
  end
  
  def edit
    @franchise = Franchise.find(params[:franchise_id])
    @player = @franchise.players.find(params[:id])
  end
  
  def update
      @franchise = Franchise.find(params[:franchise_id])
      @player = @franchise.players.find(params[:id])
      
    respond_to do |format|
      if @player.update_attributes(params[:player])
        format.html { redirect_to @franchise, notice: 'Player was successfully updated.'}
        format.json { head :ok}
      else
        format.html { render action: "edit"}
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
          
  end
end
