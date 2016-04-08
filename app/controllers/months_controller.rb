class MonthsController < ApplicationController
  def create
    Month.create! month_params
    redirect_to :back
  end

  def new
    @product = Product.new
  end

  private

  def month_params
    params.require(:month).permit(:name, :days)
  end
end
