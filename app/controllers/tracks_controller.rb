class TracksController < ApplicationController
  def index
    @track = Track.new
    @alltracks = Track.all
  end
  def create 
    Track.create(track_params)
    redirect_to tracks_path, notice: "Track created"
  end
  def track_params
    params.require(:track).permit(:title, :artist)
  end

end
