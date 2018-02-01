require_relative '../support/env'

class ProductsScreen < AppiumServer
  PRODUCTS_SCREEN_ELEMENTS = {
    button_buy_products: 'button_buy_products',
    button_go_to_products_list: 'button_to_products',
    text_list_of_products: 'text1',
    text_price_total: 'total_price'
  }.freeze

  def buy_products
    find_element(:id, PRODUCTS_SCREEN_ELEMENTS[:button_buy_products]).click
  end

  def go_to_products_list
    find_element(:id, PRODUCTS_SCREEN_ELEMENTS[:button_go_to_products_list]).click
  end

  def select_product_of_the_list(product)
    get_item_of_list_by_text(PRODUCTS_SCREEN_ELEMENTS[:text_list_of_products], product).click
  end

  private def get_item_of_list_by_text(id_items, item_text)
    find_elements(:id, id_items).each do |item_list|
      return item_list.text == item_text ? item_list : nil
    end
   end

  def get_total_of_products
    find_element(:id, PRODUCTS_SCREEN_ELEMENTS[:text_price_total]).text
  end

  def is_removed_product_from_list?(product)
    get_item_of_list_by_text(PRODUCTS_SCREEN_ELEMENTS[:text_list_of_products], product)
   end
end
