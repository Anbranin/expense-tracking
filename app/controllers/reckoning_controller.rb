class ReckoningController < ApplicationController

  def index
    @months = Month.all
  end
end
