class ProgramsController < ApplicationController
  before_action :set_festival
  before_action :set_shows, only: %i[edit update]

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
  end

  def update
    @days.each do |day|
      @shows.each do |show|
        if show.day_id == day.id
          Show.update(day_id: day.id, performer: :performer, time: :time, date: day.date)
        end
      end
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

  def set_shows
    @shows = []
    @days.each do |day|
      @showstmp = Show.where(day_id: day.id)
      @showstmp.each do |show|
        @shows << show
      end
    end
  end

  def program_params

    params.require(@show).permit(:performer, :time)
  end

end
