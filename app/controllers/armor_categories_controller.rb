class ArmorCategoriesController < ApplicationController

  def index
    @armor_categories = ArmorCategory.all
    render 'armors/index'
  end

  def show
    @armor_category = ArmorCategory.find(params[:id])
    render 'armor_categories/show'
  end

end
