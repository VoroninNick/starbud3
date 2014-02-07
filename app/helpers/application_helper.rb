module ApplicationHelper
end
def render_title
  return @title if defined?(@title)
  "Generic Page Title"
end

def is_active?(page_name)
  "active_menu" if params[:action] == page_name
end
def current_class?(test_path)
  return 'active_menu' if request.path == test_path
  ''
end

