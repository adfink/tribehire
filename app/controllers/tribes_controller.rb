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

    if @tribe.save
      redirect_to @tribe, notice: 'tribe was successfully created.'
    else
      render action: 'new'
    end
  end

  private

  def tribe_params
    params.require(:tribe).permit(:avatar, :name)
  end

end
