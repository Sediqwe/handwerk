class LampenController < ApplicationController
  def index
    @felveszem = Felveszem.new
    @lampen = Felveszem.where(link: "lampen").order(sorrend: :ASC)
  end
end
