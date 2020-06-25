class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new # needed to instantiate the form_for
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save
    # Will raise ActiveModel::ForbiddenAttributesError
    # need strong params

    # no need for app/views/restaurants/create.html.erb
    redirect_to cocktail_path(@cocktail)
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
    # also need permit dose & INGREDIENTs, how to write it though ?
end
