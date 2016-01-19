module ApplicationHelper

  def full_title(title = nil)
    title ||= 'Технохолод'
    content_for :title, title
    # "<title>#{capture title}</title>"
  end
end
