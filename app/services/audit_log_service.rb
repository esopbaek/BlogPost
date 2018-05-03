class AuditLogService
	def initialize(user)
		@current_user = user
	end

	def present_logs
		@current_user.posts
	end
end