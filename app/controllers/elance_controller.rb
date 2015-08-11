class ElanceController < ApplicationController

  def index
    x = ElanceCommunicator.new
    x.connect(current_user)


  end
end
