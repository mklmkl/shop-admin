class PricesController < ApplicationController
  before_action :set_price, only: [:show]

  # GET /prices
  # GET /prices.json
  def index
    @prices = Price.all
  end

  # GET /prices/1
  # GET /prices/1.json
  def show
  end

  # GET /prices/new

  # GET /prices/1/edit

  # POST /prices
  # POST /prices.json

  # PATCH/PUT /prices/1
  # PATCH/PUT /prices/1.json

  # DELETE /prices/1
  # DELETE /prices/1.json

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_price
      @price = Price.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def price_params
      params.require(:price).permit(:value)
    end
end
