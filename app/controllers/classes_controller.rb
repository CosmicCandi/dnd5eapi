class ClassesController < ApplicationController

  def index
    @character_classes = CharacterClass.all
    render 'classes/index', status: 200
  end

  def show
    @character_class = CharacterClass.find(params[:id]) if params[:id]
    render 'classes/_show', status: 200 if @character_class
  end

  def create
    @character_class = CharacterClass.new(classes_params)
    if @character_class.save
      render json: @character_class
    else
      render json: [error: @character_class.errors.full_messages], status: 400
    end
  end

  private
  def classes_params
    params.permit(:name, :hit_die)
  end

end
