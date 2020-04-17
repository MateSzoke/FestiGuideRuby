class FestivalBasesController < ApplicationController
  before_action :set_festival, only: %i[show edit update destroy]

  def index
    @festivals = FestivalBase.all
  end

  def new
    @festival = FestivalBase.new
  end

  def create
    @festival = FestivalBase.new(festival_params)

    if @festival.save
      @festival.startDate.to_date.upto(@festival.endDate.to_date).each do |date|
        @day = Day.new(date: date.to_datetime, festival_base_id: @festival.id)
        @day.save
      end
      redirect_to new_programs_path(id: @festival.id), notice: 'Festival was successfully created.'
    else
      render :new
    end
  end

  def edit;
  end

  def update
    if @festival.update(festival_params)
      redirect_to edit_programs_path(id: @festival.id)
    else
      render :edit
    end
  end

  def show
    @days = Day.where(festival_base_id: @festival.id)
    @shows = []
    @days.each do |day|
      @showstmp = Show.where(day_id: day.id)
      @showstmp.each do |show|
        @shows << show
      end
    end
  end

  def destroy
    @festival.destroy
    redirect_to festival_bases_path, notice: 'Festival was successfully destroyed.'
  end

  private

  def set_festival
    @festival = FestivalBase.find(params[:id])
  end

  def festival_params
    params.require(:festival_base).permit(:name, :imgSrc, :startDate, :endDate, :stage)
  end

end
