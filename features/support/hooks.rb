Before do
  @asos_site = Asos_Site.new
  @asos_site.asos_homepage.visit_asos_home_page
  # @mail = Asos_Site.new
  # @get_mail = @mail.get_minute_mail
  # @get_mail.visit_minute_inbox
  # @email = @get_mail.get_email
end
#
# After do
#   puts 'This line will run after each Scenario'
# end
