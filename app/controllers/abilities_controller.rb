class AbilitiesController < ApplicationController

  def index
    @abilities = Ability.all
    render 'abilities/index', status: 200
  end

  def show
    if params[:id]
      @ability = Ability.find(params[:id])
      if @ability
        render 'abilities/show', status: 200
      end
    end
  end

end
