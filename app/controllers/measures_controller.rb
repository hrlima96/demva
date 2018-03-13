class MeasuresController < ApplicationController
  def index
    @measures = Measure.all
    render json: @measures
  end

  def create
    @measure = Measure.new(measure_params)
    if @measure.save
      render json: {success: "success"}, status: :ok
    else
      render json: {error:@measure.errors}, status: :unprocessable_entity
    end
  end

  private

  def measure_params
    params.require(:measures).permit(:board_id, :luminosity)
  end
end
