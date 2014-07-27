module ApplicationHelper
  def nav_li name, path
    is_active = request.path == path ? :active : nil
    content_tag :li, link_to(name, path), class: is_active
  end
end
