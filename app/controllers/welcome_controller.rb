class WelcomeController < ApplicationController
  def index
   @message = "Append /mathadd to the url"
  end

  def mathadd
    @random1 = rand(100)
    @random2 = rand(100)
  end
end
