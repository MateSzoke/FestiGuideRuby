class FestivalController < ApplicationController
  before_action :set_festival, only: [:show]

  def show
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_festival
    #@festival = Festival.find(params[:id])
    @festival = FestivalBase.new(name: 'Volt festival', imgSrc: 'https://nepszava.hu/i/16/9/1/1238039.jpg', startDate: '2020. julius 1.', endDate: '2020. julius 5.')
  end

  # Only allow a list of trusted parameters through.
  def festival_params
    params.require(:festival).permit(:number, :title, :description)
  end
end
