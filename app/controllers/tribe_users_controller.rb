class TribeUsersController < ApplicationController

  def new
    @tribe = Tribe.find(params[:tribe_id])
    @tribe_user = TribeUser.new
  end

  def create
   user = User.find_by(email:params[:tribe_user][:email])
   tribe = Tribe.find(params[:tribe_tag])
   TribeUser.create(tribe_id:tribe.id, user_id: user.id)
    redirect_to tribe
  end

end
