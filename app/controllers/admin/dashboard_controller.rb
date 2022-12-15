class Admin::DashboardController < ApplicationController

  http_basic_authenticate_with name: ENV["ADMIN_USER"], password: ENV["ADMIN_PASS"]
  def show
    @category_length = Category.all.length
    @products_length = Product.all.length
  end
end
