class StocksController < ApplicationController
  def search
    return if params[:stock].nil?
    @stock = Stock.new_from_lookup(params[:stock])
    render 'user/my_portfolio'
  end
end