require 'capybara'
require 'capybara/cucumber'

Capybara.configure do |config|
  config.default_driver = :selenium
  config.app_host   = 'http://www.amazon.co.uk'
end

Capybara.register_driver :selenium do |app|
  browser = (ENV['browser'] || 'chrome').to_sym
  Capybara::Selenium::Driver.new(app, :browser => browser)
end

World(Capybara)