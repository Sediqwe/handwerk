class LampenController < ApplicationController
  def index
    @felveszem = Felveszem.new
    @lampen = Felveszem.where(link: "lampen")
  end
end
