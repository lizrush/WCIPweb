module ApplicationHelper
  def controller_classes
    controller_class = controller.controller_path.gsub('/', '-')
    action_class = controller_class + '-' + controller.action_name
    [controller_class, action_class]
  end
end
