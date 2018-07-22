Given("I pick a gender of clothes") do
  @asos_site.asos_homepage.choose_male
end

Given("I pick a shirt as the style") do
  @asos_site.male_clothes_page.choose_clothing
  @asos_site.male_clothes_page.click_shirt_link
end

Given("I pick a shirt to add to the cart") do
  @asos_site.male_clothes_page.pick_shirt
  @asos_site.male_clothes_page.pick_size
end

When("I add it to the cart") do
  @asos_site.male_clothes_page.add_shirt_to_basket
end

Then("I should be able to see it in the cart") do
  @asos_site.male_clothes_page.go_to_basket
  expect(@asos_site.male_clothes_page.find_item_in_basket).to eql "ASOS DESIGN oversized viscose shirt with deep v in peach"
end
