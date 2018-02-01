Given('I am on the products list') do
  @products_screen.go_to_products_list
end

When('I select a product of the list') do
  @products_screen.select_product_of_the_list('productName : Mac Book')
end

Then('The product should be removed from the list') do
  expect(@products_screen.is_removed_product_from_list?('productName : Mac Book')).to eq(nil)
end

When('I buy some products of the list') do
  @products_screen.buy_products
end

Then('It should calculate all products of the list') do
  expect(@products_screen.get_total_of_products).to eq('15180')
end
