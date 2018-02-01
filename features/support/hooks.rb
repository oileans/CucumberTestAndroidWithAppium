require_relative '../screen/products_screen'

Before do
  @products_screen = ProductsScreen.new
end

After do
  @products_screen.close_driver
end
