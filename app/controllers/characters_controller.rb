class CharactersController < ApplicationController
  def index
    @characters = Character.all
  end

  def show
    @character = Character.find(params[:id])
  end

  def new
    @characterable_id = params[:characterable_id]
    @characterable_type = params[:characterable_type]
    @character = Character.new
  end

  def edit
    @character = Character.find(params[:id])
  end

  def update
    @character = Character.find(params[:id])
    @character.update(character_params)
    redirect_to @character
  end

  def create
    if params[:characterable_type] == "House"
      @character = House.find(params[:characterable_id]).characters.create!(character_params)
    else
      @character = Vassal.find(params[:characterable_id]).characters.create!(character_params)
    end
    redirect_to @character
  end

  def destroy
    @character = Character.find(params[:id])
    @characterable = @character.characterable
    @character.destroy
    @characterable.noble ? (redirect_to vassal_path @characterable) : (redirect_to house_path @characterable)
  end

  private
  def character_params
    params.require(:character).permit(:name, :status, :img_url, :characterable_type, :characterable_id)
  end
end
