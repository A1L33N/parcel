require('capybara/rspec')
require('./app')
require('launchy')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("parcel path", {:type => :feature}) do
  it("calculate the shipping cost based on deliver type distance weight volume") do
    visit("/")
    fill_in("length", :with => 10)
    fill_in("width", :with => 10)
    fill_in("height", :with => 12)
    fill_in("delivery_type", :with => "fast")
    fill_in("weight", :with => 10)
    fill_in("distance", :with => 1000)
    click_button('Calculate Shipping Cost')
    expect(page).to have_content("$31")
  end

end
