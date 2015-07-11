class Api::V1::PerformancesController < ApplicationController
  def index
    render json: Performance.all
  end

  def show
    render json: Performance.find(params[:id])
  end

  def create
    performance = Performance.new(performance_params)
    if performance.save
      performance.songs = Song.find(params[:performance][:song_ids])
      render json: performance,
        status: :created
    else
      render json: { errors: performance.errors },
        status: :unprocessable_entity
    end
  end

  private

  def performance_params
    params.require(:performance).permit(:name)
  end
end
