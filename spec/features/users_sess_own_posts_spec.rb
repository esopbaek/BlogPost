require "rails_helper"

feature "User sees own posts" do
	scenario "doesn't see other' posts" do
		Post.create!(title: "Other post", email: "other_person@example.com")

		sign_in_as("person@example.com")

		expect(page).not_to have_css ".posts li", text: "Other post"
	end
end