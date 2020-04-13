class FestivalBasesController < ApplicationController
  before_action :set_festival, only: %i[show edit update]

  def index
    @festivals = FestivalBase.all
  end

  def new
    @festival = FestivalBase.new
  end

  def create
    @festival = FestivalBase.new(festival_params)

    respond_to do |format|
      if @festival.save
        format.html { redirect_to add_festival_stage_path, notice: 'Festival   was successfully created.' }
        format.json { render :show, status: :created, location: @festival }
      else
        format.html { render :new }
        format.json { render json: @festival.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit;
  end

  def update
    respond_to do |format|
      if @festival.update(festival_params)
        format.html { redirect_to @festival, notice: 'Festival was successfully updated.' }
        format.json { render :show, status: :ok, location: @festival }
      else
        format.html { render :edit }
        format.json { render json: @festival.errors, status: :unprocessable_entity }
      end
    end
  end

  def show;
  end

  private

  def set_festival
    @festival = FestivalBase.find(params[:id])
  end

  def festival_params
    params.require(:festival).permit(:name, :imgSrc, :startDate, :endDate, :stage)
  end
end
