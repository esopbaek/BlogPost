require "rails_helper"

feature "User creates post" do
	scenario "successfully" do
		sign_in_as("bob@example.com")

		# click_on "bob@example.com's Posts"
		# click_on "Add "
		# fill_in "Title", with: "The diversification of state economies"
		# click_on "Submit"

		expect(page).to have_css '.container div', text: "Unknown user"
	end
end