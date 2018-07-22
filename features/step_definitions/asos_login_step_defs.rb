Given("I access the asos login page") do
  @asos_site.asos_homepage.click_option_button
  @asos_site.asos_homepage.click_log_in_link
end

Given("I input incorrect email address") do
  @asos_site.asos_login.fill_in_wrong_email
end

Given("I input incorrect password") do
  @asos_site.asos_login.fill_in_wrong_password

end

When("I press login") do
  @asos_site.asos_login.click_submit
end

Then("I receive an error saying incorrect information") do
  expect(@asos_site.asos_login.email_error).to eql "Email fail! Please type in your correct email address"
end
