require "allure-cucumber"
require "capybara"
require "capybara/cucumber"
require_relative "helpers"
require_relative "actions"

World(Helpers)
World(Actions)

Capybara.configure do |config|
  config.default_driver = :selenium
  Capybara.default_max_wait_time = 10
  config.app_host = "http://parodify.qaninja.com.br"
end
AllureCucumber.configure do |config|
  config.results_directory = "/reports"
  config.clean_results_directory = true
end
