require 'capybara/dsl'

class Asos_Homepage
  include Capybara::DSL

  #Constants
  HOMEPAGE_URL = 'http://www.asos.com'
  REGISTRATION_BUTTON = "#myAccountDropdown"
  REGISTRATION_LINK = "Join"
  MALE_CLOTHES = "MEN"
  LOGIN_BUTTON = "Sign In"

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

  def choose_male
    click_link(MALE_CLOTHES)
  end

  def click_log_in_link
    click_link(LOGIN_BUTTON)
  end

end
