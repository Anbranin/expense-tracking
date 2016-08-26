class ReckoningController < ApplicationController

  def index
    @month = Month.new
    @months = Month.all
  end

end
