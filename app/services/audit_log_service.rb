class AuditLogService
  def initialize(user)
    @current_user = user
  end

  def present_logs
    @current_user.posts + @current_user.musings
  end
end
