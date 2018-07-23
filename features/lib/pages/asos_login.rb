require 'capybara/dsl'

class Asos_Login
  include Capybara::DSL

  #Constants
  EMAIL_ERROR_LOGIN = "#main > div > div.form.form-login > form > fieldset > div:nth-child(2) > div.input-wrapper > span"
  EMAIL_INPUT = "Username"
  PASSWORD_INPUT = "Password"

  def fill_in_wrong_email
    fill_in EMAIL_INPUT, with: "email@.com"
  end

  def fill_in_wrong_password
    fill_in PASSWORD_INPUT, with: "wrongpassword"
  end

  def email_error
    find(EMAIL_ERROR_LOGIN).text
  end

  def click_submit
    find('#signin').click
  end

end
