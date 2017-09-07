class ProductsController < ApplicationController

  def index
    @products = Product.all

  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new

    @product.name = params[:product][:name]
    @product.description = params[:product][:description]
    @product.price_in_cents = params[:product][:price_in_cents]

    if @product.save
      # render action: 'show'
      redirect_to product_path(@product.id)
    else
      render action: 'new'
    end
  end

  def edit

    @product = Product.find(params[:id])
    #code
  end

  def show
    @product = Product.find(params[:id])
  end

  def update
    #code
  end

  def destroy
    #code
  end

end
