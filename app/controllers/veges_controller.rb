class VegesController < ApplicationController

  def index
    @veges = Vege.all
  end

  def show
    @vege = Vege.find(params[:id])
    @menus = @vege.menus.includes(:user)
  end

  def new
  end

  def create
    Vege.create(vege_params)
  end

  private

  def vege_params
    params.permit(:vege, :image)
  end

end
