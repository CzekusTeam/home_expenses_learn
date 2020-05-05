module ApplicationHelper
  def nav_link(label, path)
    active = current_page?(path) ? 'active' : ''
    "<a class='nav-item nav-link #{active}' href='#{path}'>#{label}</a>".html_safe
  end
end
