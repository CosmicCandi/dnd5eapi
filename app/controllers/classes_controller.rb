class ClassesController < ApplicationController

  def index
    @character_classes = CharacterClass.all
    render 'classes/index', status: 200
  end

  def show
    if params[:id]
      @character_class = CharacterClass.find(params[:id])
      if @character_class
        render 'classes/_show', status: 200
      end
    end
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
