module ApplicationHelper
  def nav_li name, path
    is_active = request.path == path ? :active : nil
    content_tag :li, link_to(name, path), class: is_active
  end

  def page_li number
    is_active = params[:p].to_i == number ? :active : nil
    content_tag :li, link_to(number, products_path(p: number)), class: is_active
  end
end
