require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium, using: :chrome, screen_size: [1400, 1400] do |driver_options|
    # Add Chrome options here
    driver_options.add_argument("--disable-gpu")
    driver_options.add_argument("--no-sandbox")
    driver_options.add_argument("--window-size=1400,1400")
    # Remove or comment out the headless option to see the browser window
    # driver_options.add_argument("--headless") # Remove this line to run with a visible browser
  end
end
