class ArmorsController < ApplicationController

  def index
    @armors = Armor.all.where(armor_category_id: params[:armor_category_id])
    render "armor_categories/index"
  end

  def show
    @armor = Armor.find(params[:id])
  end


end
