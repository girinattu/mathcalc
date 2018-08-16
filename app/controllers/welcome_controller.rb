class WelcomeController < ApplicationController
  def index
    @random1 = rand(100)
    @random2 = rand(100)
  end
end
