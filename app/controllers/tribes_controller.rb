class TribesController < ApplicationController

  def index

  end

  def show
    # binding.pry
    @tribe = Tribe.find(params[:id])
  end

end
