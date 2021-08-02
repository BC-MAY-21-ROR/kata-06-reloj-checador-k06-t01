module ApplicationHelper
  include Pagy::Frontend

  def current_path?(path)
    'active' if request.path.include? path
  end

  def validate_input(form, field)
    form.errors.include?(field) ? 'is-invalid' : ''
  end

  def error_message(form, field)
    form.errors.full_messages_for(field).first
  end

  def status(current_status)
    current_status == 'active' ? 'bg-success' : 'bg-danger'
  end

  def button_status(current_status)
    current_status == 'active' ? 'fas fa-bell-slash' : 'fas fa-bell'
  end

  def build_alert_classes(alert_type)
    classes = 'alert alert-dismissable '
    case alert_type.to_sym
    when :alert, :danger, :error, :validation_errors
      classes += 'alert-danger'
    when :warning, :todo
      classes += 'alert-warning'
    when :notice, :success
      classes += 'alert-success'
    else
      classes += 'alert-info'
    end
  end
end
