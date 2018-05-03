class User
	def initialize(email)
		@email = email
	end

	def posts
		Post.where(email: @email)
	end

	def signed_in?
		@email.present?
	end
end