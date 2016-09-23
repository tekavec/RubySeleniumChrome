class Home
  include Capybara::DSL

  def initialize
    visit('/')
  end
end