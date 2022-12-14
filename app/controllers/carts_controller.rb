class CartsController < ApplicationController

  def show
    # @product = Product.find(params[:id])
  # if cart is empty, display alert. 
    # if product_id
    #   empty_cart_alert
    # end
  end

  def empty_cart_alert

      puts "hello"

  end
  
  
  def add_item
    product_id = params[:product_id].to_s
    modify_cart_delta(product_id, +1)

    redirect_back fallback_location: root_path
  end

  def remove_item
    product_id = params[:product_id].to_s
    modify_cart_delta(product_id, -1)

    redirect_back fallback_location: root_path
  end

  private

  def modify_cart_delta(product_id, delta)
    cart[product_id] = (cart[product_id] || 0) + delta
    cart.delete(product_id) if cart[product_id] < 1
    update_cart cart
  end

end
