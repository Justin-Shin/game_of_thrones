class VassalsController < ApplicationController
  def index
    @vassals = Vassal.all
  end

  def show
    @vassal = Vassal.find(params[:id])
  end

  def new
    @house = params[:house]
    @vassal = Vassal.new
  end

  def edit
  end

  def create
    @vassal = House.find(params[:house_id]).vassals.new(vassal_params)
    @vassal.noble = true
    @vassal.save
    redirect_to vassal_path @vassal
  end

  def update
  end

  def destroy
  end

  private
  def vassal_params
    params.require(:vassal).permit(:name, :sigil, :words, :seat, :region, :house_id)
  end
end
