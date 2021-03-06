require 'capybara/rspec'
require 'simplecov'
require 'simplecov-console'
# require 'fake_sms'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  # Want a nice code coverage website? Uncomment this next line!
  # SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start

RSpec.configure do |config|
  config.after(:suite) do
    puts
    puts "\e[33mHave you considered running rubocop? It will help you improve your code!\e[0m"
    puts "\e[33mTry it now! Just run: rubocop\e[0m"
  end
end

# RSpec.configure do |config|
#   config.before(:each) do
#     stub_const("Twilio::REST::Client", FakeSms)
#   end
# end
#
# RSpec.configure do |config|
#   config.before :each, type: :feature do
#     FakeSMS.messages = []
#   end
# end
