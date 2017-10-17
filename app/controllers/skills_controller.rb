class SkillsController < ApplicationController


  before_action :find_ability_by_id, except: [:index]

  def index
    @skills = Skill.all
    render 'skills/index', status: 200
  end

  def show
    @skill = Skill.find(params[:id])
    render 'skills/_show', status: 200
  end


  private

end
