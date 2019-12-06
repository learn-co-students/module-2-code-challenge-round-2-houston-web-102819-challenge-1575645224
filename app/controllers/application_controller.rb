class ApplicationController < ActionController::Base

def form
  render :form
end

def createform
  appearance = Appearance.create(
    guest_id:params[:guest_id],
    episode_id:params[:episode_id]
  ) 
  redirect_to "/episode/#{params[:episode_id]}"

end 

def episode 
  @episode = Episode.find(params[:id])
  @guest = Guest.find(params[:id])
  render :episode

end

def selectedpage
 
end 

end
