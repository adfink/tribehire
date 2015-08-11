class ElanceController < ApplicationController

  def index
    x = ElanceCommunicator.new
    x.connect(params)


  end
end
