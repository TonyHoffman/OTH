class ScheduledGamesController < ApplicationController
 
 def create
  @franchise = Franchise.find(params[:franchise_id])
  @scheduled_game = @franchise.scheduled_games.create(params[:scheduled_game])
  redirect_to edit_franchise_path(@franchise)
 end
 
 def edit
   @franchise = Franchise.find(params[:franchise_id])
   @scheduled_game = @franchise.scheduled_games.find(params[:id])
 end
 
 def update
   @franchise = Franchise.find(params[:franchise_id])
   @scheduled_game = @franchise.scheduled_games.find(params[:id])
   
   respond_to do |format|
     
      if @scheduled_game.update_attributes(params[:scheduled_game])
         format.html { redirect_to @franchise, notice: 'Game was successfully updated.' }
         format.json { head :ok }
       else
         format.html { render action: "edit" }
         format.json { render json: @scheduled_game.errors, status: :unprocessable_entity }
       end
     end
 end

end
