class LampenController < ApplicationController
  def index
    @felveszem = Felveszem.new
    @lampen = Felveszem.all
  end
end
