require "capybara/dsl"

class Asos_Male_Clothes

  include Capybara::DSL

  # Constants
  CLOTHING = "#chrome-sticky-header > div:nth-child(2) > nav:nth-child(2) > div > div._3r7rW4o > button:nth-child(3)"
  SHIRT_LINK = "#chrome-sticky-header > div:nth-child(2) > nav:nth-child(2) > div > div:nth-child(4) > div._1Exx-PU > div > section._1QmxDO_.YlqXo8e > div:nth-child(2) > ul:nth-child(1) > li:nth-child(9) > a"
  FIRST_SHIRT = "#product-10163549 > a > div._1FN5N-P > img"
  ADD_TO_CART = "#product-add > div > a"
  BASKET = "#chrome-sticky-header > div._2tINcUI > div > ul._1OLInBo > li:nth-child(3) > a"
  ITEM_IN_BASKET = "#bagApp > div > div > div.bag-contents-wrapper > div.bag-contents-holder.bag-contents-holder--items > bag-item-list > ul > li > div > div > div > bag-item-product > div > div > p.bag-item-name > a"

  def choose_clothing
    find(CLOTHING).click
    sleep 2
  end

  def click_shirt_link
    find(SHIRT_LINK).click
    sleep 2
  end

  def pick_shirt
    find(FIRST_SHIRT).click
  end

  def add_shirt_to_basket
    find(ADD_TO_CART).click
  end

  def pick_size
    find(".product-size").click
    find("M - Chest 38-40in (96-101cm)").click
  end

  def go_to_basket
    find(BASKET).click
  end

  def find_item_in_basket
    find(ITEM_IN_BASKET).text
  end

end
