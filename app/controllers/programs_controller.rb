class ProgramsController < ApplicationController
  before_action :set_festival

  def new
  end

  def create
    @days.each do |day|
      @show = Show.new(day_id: day.id, performer: :performer, time: :time, date: day.date)
      @show.save
    end
    redirect_to festival_bases_path
  end

  def edit
    @shows = []
    @days.each do |day|
      @showstmp = Show.where(day_id: day.id)
      @showstmp.each do |show|
        @shows << show
      end
    end
  end

  def update
    @days.each do |day|
      @show = Show.update(day_id: day.id, performer: :performer, time: :time, date: day.date)
    end
    redirect_to festival_bases_path
  end

  def show;
  end

  private

  def set_festival
    @festival = FestivalBase.find(params[:id])
    @days = Day.where(festival_base_id: @festival.id)
  end

  def program_params

    params.require(@show).permit(:performer, :time)
  end

end
