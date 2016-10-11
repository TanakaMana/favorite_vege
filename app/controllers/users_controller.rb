class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @person = user.person
    @veges = user.veges.page(params[:page]).per(5).order("created_at DESC")
  end
end
