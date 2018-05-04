class AuditLogsController < ApplicationController
	def index
		@audit_logs = AuditLogService.new(current_user).present_logs
	end
end