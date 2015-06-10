class SuperherosController < ApplicationController

  def index
    @superheros = Superhero.order("RANDOM()").paginate(page: params[:page], per_page: 6)
  end

  def show
    @superhero = Superhero.find(params[:id])
  end

end
