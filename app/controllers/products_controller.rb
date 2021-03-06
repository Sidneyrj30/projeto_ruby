class ProductsController < ApplicationController
  load_and_authorize_resource
  before_action :current_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def show
    
  end

  def new
    @product = Product.new
  end
  
  def create
    product = Product.create(product_params)

    redirect_to products_path(product)
  end

  def edit
    
  end

  def update
    
    @product.update(product_params)

    redirect_to product_path(@product)
  end

  def destroy
    
    @product.destroy

    redirect_to products_path
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :category_id)
  end
  
  def current_product
    @product = Product.find(params[:id])
  end
  
end