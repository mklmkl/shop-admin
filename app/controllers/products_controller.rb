class ProductsController < ApplicationController
  before_action :set_product, only: [:show]

  # GET /products
  # GET /products.json
  def index
    @products = Product.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new

  # GET /products/1/edit

  # POST /products
  # POST /products.json

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json

  # DELETE /products/1
  # DELETE /products/1.json

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :category_id, :price_id)
    end
end
