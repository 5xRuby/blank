module ApplicationHelper
  def nav_dropdown name, prefix_path
    # <li class="dropdown">
    #   <a href="#" class="dropdown-toggle" data-toggle="dropdown">產品 <span class="caret"></span></a>
    #   <ul class="dropdown-menu" role="menu">
    #   </ul>
    # </li>
    is_active = request.path.start_with?(prefix_path) ? :active : nil
    content_tag :li, class: "dropdown #{is_active}" do
      link_to('#', class: 'dropdown-toggle', data: {toggle: :dropdown}){
        name.html_safe + content_tag(:span, nil, class: 'caret')
      } + content_tag(:ul, class: 'dropdown-menu', role: :menu){
        yield
      }
    end
  end
  def nav_li name, path
    is_active = request.path == path ? :active : nil
    content_tag :li, link_to(name, path), class: is_active
  end

  def page_li number
    is_active = params[:p].to_i == number ? :active : nil
    content_tag :li, link_to(number, products_path(p: number)), class: is_active
  end
end
