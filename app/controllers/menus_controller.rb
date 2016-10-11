class MenusController < ApplicationController
  def create
    @menu = Menu.create(dish: menu_params[:dish],photo: menu_params[:photo], link: menu_params[:link], vege_id: menu_params[:vege_id], user_id: current_user.id)
    redirect_to "/veges/#{@menu.vege.id}"   #コメントと結びつくツイートの詳細画面に遷移する
  end

  private

  def menu_params
    params.permit(:dish, :photo, :link, :vege_id)
  end
end
