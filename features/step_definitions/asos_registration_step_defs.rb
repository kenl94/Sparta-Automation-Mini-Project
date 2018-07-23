Given("I access the asos registration page") do
  @asos_site.asos_homepage.click_option_button
  @asos_site.asos_homepage.click_sign_up_link
end

Given("I fill in the form") do
  @asos_site.asos_registration.fill_in_first_name
  @asos_site.asos_registration.fill_in_last_name
  @asos_site.asos_registration.select_day
  @asos_site.asos_registration.select_month
  @asos_site.asos_registration.select_year
  # @asos_site.asos_registration.select_gender
  @asos_site.asos_registration.select_contact_preferences
end

Given("I input incorrect email address details") do
  @asos_site.asos_registration.fill_in_wrong_email
end

Given("I input incorrect password details") do
  @asos_site.asos_registration.fill_in_wrong_password
end

When("I press away") do
  @asos_site.asos_registration.press_away
end

Then("I receive an error saying incorrect details") do
  expect(@asos_site.asos_registration.find_email_error).to eql "Email fail! Please type in your correct email address"
  expect(@asos_site.asos_registration.find_password_error).to eql "At least 6 letters and 1 number, please!"
end
