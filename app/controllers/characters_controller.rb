class CharactersController < ApplicationController
  def index
    @characters = Character.all
  end

  def show
    @character = Character.find(params[:id])
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.create(character_parms)
    redirect_to character_path @character
  end

  private
  def character_params
    params.require(:character).permit(:name, :status, :img_url, :characterable_type, :characterable_id)
  end
end
