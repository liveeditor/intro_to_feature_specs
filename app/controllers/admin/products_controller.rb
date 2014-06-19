class Admin::ProductsController < ApplicationController
  def index
    @products = Product.order(:title)
  end
  
  def new
    @product = Product.new
  end
  
  def create
    @product = Product.new(product_params)
    
    if @product.save
      redirect_to edit_admin_product_path(@product), notice: 'The product was created successfully.'
    else
      flash[:error] = 'There was an error creating the product.'
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end
  
private
 
  def product_params
    params.require(:product).permit(:title, :description, :price, :shipping_price)
  end
end
