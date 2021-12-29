class ProductsController < ApplicationController
  # Com esse bedore_action não há necessidade em usar os códigos comentados abaixo
  before_action :current_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def show
    #@product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end
  
  def create
    product = Product.create(product_params)

    redirect_to products_path(product)
  end

  def edit
    #@product = Product.find(params[:id])
  end

  def update
    #@product = Product.find(params[:id])
    @product.update(product_params)

    redirect_to product_path(@product)
  end

  def destroy
    #@product = Product.find(params[:id])
    @product.destroy

    redirect_to products_path
  end

  private

  def product_params
    params.require(:product).permit(:name, :category, :price)
  end
  
#função a ser usado no before_action
  def current_product
    @product = Product.find(params[:id])
  end
end
