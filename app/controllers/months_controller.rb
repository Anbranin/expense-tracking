class MonthsController < ApplicationController

  def create
    params.require(:month).permit(:name, :days)
    day_number = month_params[:days].to_i
    month = Month.create! name: params[:month][:name]
    day_name = 0
    day_number.times do
      day_name += 1
      Day.create! month: month, name: day_name
    end
    redirect_to :back
  end

  private

  def month_params
    params.require(:month).permit(:name, :days)
  end
end
