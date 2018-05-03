module Features
	def sign_in
		visit root_path
		fill_in "Email", with: "name@example.com"
		click_on "Sign in"
	end
end