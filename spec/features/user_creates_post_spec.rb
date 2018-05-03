require "rails_helper"

feature "User creates blog" do
	scenario "successfully" do
		sign_in

		click_on "Add a new post"
		fill_in "Title", with: "The diversification of state economies"
		click_on "Submit"

		expect(page).to have_css '.posts li', text: "The diversification of state economies"
	end
end