module ApplicationHelper
     # menu active
  def active_class(link_path)
    current_page?(link_path) ? 'active' : ""
  end
end
