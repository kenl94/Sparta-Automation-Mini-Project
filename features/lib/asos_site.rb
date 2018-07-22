require 'capybara/dsl'
require_relative 'pages/asos_homepage.rb'
require_relative 'pages/asos_registration.rb'
require_relative 'pages/asos_login.rb'
require_relative 'pages/asos_male_clothes_page.rb'

class Asos_Site

  def asos_homepage
    Asos_Homepage.new
  end

  def get_minute_mail
    TempMail.new
  end

  def asos_registration
    Asos_Registration.new
  end

  def asos_login
    Asos_Login.new
  end

  def male_clothes_page
    Asos_Male_Clothes.new
  end

end
