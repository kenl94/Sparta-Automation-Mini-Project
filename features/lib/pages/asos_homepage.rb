require 'capybara/dsl'

class Asos_Homepage
  include Capybara::DSL

  #Constants
  HOMEPAGE_URL = 'http://www.asos.com'
  REGISTRATION_BUTTON = "#myAccountDropdown"
  REGISTRATION_LINK = "Join"

  def visit_asos_home_page
    visit(HOMEPAGE_URL)
    sleep 2
  end

  def click_option_button
    find(REGISTRATION_BUTTON).click
    sleep 2
  end

  def click_sign_up_link
    click_link(REGISTRATION_LINK)
  end


end
