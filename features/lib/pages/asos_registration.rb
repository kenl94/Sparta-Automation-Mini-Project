require 'capybara/dsl'

class Asos_Registration
  include Capybara::DSL

  #Constants
  EMAIL_FIELD = "Email"
  FIRST_NAME_FIELD = "FirstName"
  LAST_NAME_FIELD = "LastName"
  PASSWORD_FIELD = "Password"
  DAY_DROPDOWN = "BirthDay"
  MONTH_DROPDOWN = "BirthMonth"
  YEAR_DROPDOWN = "BirthYear"
  GENDER_RADIO_MALE = "Gender"
  CONTACT_PREFERENCES_ALL = "#main > div.container.register > div.form.form-register.js-form.tran1 > form > fieldset > div.checkbox-container.consent > div.col-xs-12.flex-wrapper.container-all-checkbox > div.col-md-4 > div > label.checkbox.qa-all-pref-label-all"
  JOIN_BUTTON = "register"
  EMAIL_ERROR_MESSAGE = "#main > div.container.register > div.form.form-register.js-form.tran1 > form > fieldset > div:nth-child(1) > div.input-wrapper > span"
  PASSWORD_ERROR_MESSAGE = "#main > div.container.register > div.form.form-register.js-form.tran1 > form > fieldset > div:nth-child(4) > div.input-wrapper > span.qa-password-validation.field-validation-error"

  def fill_in_email(email)
    fill_in EMAIL_FIELD, with: email
  end

  def fill_in_wrong_email
    fill_in EMAIL_FIELD, with: "email@.com"
  end

  def fill_in_password
    fill_in PASSWORD_FIELD, with: "password@1"
  end

  def fill_in_wrong_password
    fill_in PASSWORD_FIELD, with: "wrongpassword"
  end

  def fill_in_first_name
    fill_in FIRST_NAME_FIELD, with: "FIRST NAME"
  end

  def fill_in_last_name
    fill_in LAST_NAME_FIELD, with: "LAST NAME"
  end

  def select_day
    select "27", from: DAY_DROPDOWN
  end

  def select_month
    select "July", from: MONTH_DROPDOWN
  end

  def select_year
    select "1994", from: YEAR_DROPDOWN
  end

  def select_gender
    select "Guy", from: GENDER_RADIO_MALE
  end

  def select_contact_preferences
    find(CONTACT_PREFERENCES_ALL).click
  end

  def find_email_error
    find(EMAIL_ERROR_MESSAGE).text
  end

  def find_password_error
    find(PASSWORD_ERROR_MESSAGE).text
  end

  def press_join
    click_link(JOIN_BUTTON)
  end

  def press_away
    find(EMAIL_ERROR_MESSAGE).click
  end


end
