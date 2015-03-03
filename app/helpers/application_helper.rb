module ApplicationHelper
  # just in case i would like to try to change background color based on controllers or actions..
  def controller?(*controller)
    controller.include?(params[:controller])
  end

  def action?(*action)
    action.include?(params[:action])
  end
end
