class ShopperController < ApplicationController
  include(CurrentCart)
  before_action(:set_cart)
  def index
    if params[:search].present?
      @allproducts = Product.where("name LIKE ? OR description LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%").order(:name)
    else
      @allproducts = Product.order(:name)
    end
    # @allproducts = Product.order(:name)
  end

  def show
    @product = Product.find(params[:id])
  end
end
