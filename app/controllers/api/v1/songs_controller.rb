class Api::V1::SongsController < ApplicationController

  def show
    song = Song.find(params[:id])
    render json: song
  end

  def create
    song = Song.new(song_params)
    if song.save
      render json: song,
        status: :created
    else
      render json: { errors: song.errors },
        status: :unprocessable_entity
    end
  end

  private

  def song_params
    params.require(:song).permit(:name)
  end
end
