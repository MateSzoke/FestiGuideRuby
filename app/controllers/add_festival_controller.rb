class AddFestivalController < ApplicationController
  before_action :set_festival, only: [:update]

  def new
    @festival = FestivalBase.new
    @days = []
    @shows = []
  end

  def stage
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_festival
    #@festival = Festival.find(params[:id])
    @festival = FestivalBase.new(name: 'Volt festival', imgSrc: 'https://nepszava.hu/i/16/9/1/1238039.jpg', stage: 'Telekom nagyszínpad', startDate: Time.new(2020, 6, 2), endDate: Time.new(2020, 6, 7))
    @days = []
    @shows = []
    @festival.startDate.to_date.upto(@festival.endDate.to_date).each do |date|
      @day = Day.new(date: date.to_datetime, festival_base_id: @festival.id)
      @days << @day
      @shows << Show.new(performer: 'Akkezdet Phiai', time: '19:00', date: @day.date)
      @shows << Show.new(performer: '30Y', time: '20:30', date: @day.date)
      @shows << Show.new(performer: 'Parov Stelar', time: '22:00', date: @day.date)
    end
  end

  # Only allow a list of trusted parameters through.
  def festival_params
    params.require(:festival).permit(:number, :title, :description)
  end
end
