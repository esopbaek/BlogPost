class AuditLogsController < ApplicationController
	def index
		# @audit_logs = current_user.posts.map {|a| a.title }
		@audit_logs = AuditLogService.new(current_user).present_logs
	end
end