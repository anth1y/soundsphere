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
  def upload
    uploaded_io = params[:track][:file]
    File.open(Rails.root.join('public', 'uploads',
    uploaded_io.original_filename), 'wb') do |f|
    f.write(uploaded_io.read)
    end
  end
end

