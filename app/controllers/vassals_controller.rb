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
    @vassal = Vassal.find(params[:id])
  end

  def create
    @vassal = House.find(params[:house_id]).vassals.new(vassal_params)
    @vassal.noble = true
    @vassal.save
    redirect_to @vassal
  end

  def update
    @vassal = Vassal.find(params[:id])
    @vassal.update(vassal_params)
    redirect_to @vassal
  end

  def destroy
    @vassal = Vassal.find(params[:id])
    @house = @vassal.house
    @vassal.destroy
    redirect_to @house
  end

  private
  def vassal_params
    params.require(:vassal).permit(:name, :sigil, :words, :seat, :region, :house_id)
  end
end
