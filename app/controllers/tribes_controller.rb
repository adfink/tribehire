class TribesController < ApplicationController

  def index

  end

  def show
    # binding.pry
    @tribe = Tribe.find(params[:id])
  end

  def new
    @tribe = Tribe.new
  end

  def create
    @tribe = Tribe.new(tribe_params)
    @tribe.user_id = session[:user_id]
    if @tribe.save
      UserRole.create(user_id: current_user.id, tribe_id: tribe.id, role_id: 1)
      # binding.pry
      redirect_to @tribe, notice: 'tribe was successfully created.'
    else
      flash.now[:errors] = restaurant.errors.full_messages.join(", ")
      render action: 'new'
    end
  end

  private

  def tribe_params
    params.require(:tribe).permit(:avatar, :name)
  end

end
