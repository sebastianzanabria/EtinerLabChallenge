# frozen_string_literal: true

class ProductsController < ApplicationController
  def new
    @product = Product.new
    @product.variants.build
    render :new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to new_product_path
    else
      redirect_to new_product_path(error: @product.errors.full_messages)
    end
  end

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :category, variants_attributes: %i[color size])
  end
end
