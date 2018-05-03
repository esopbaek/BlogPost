require "rails_helper"

feature "User visits the homepage" do
	scenario "successfully" do
		sign_in

		expect(page).to have_css "h1", text: "Blog Posts"
	end
end