module ApplicationHelper
  def devise_mapping
    Devise.mappings[:user]
  end


  def resource_name
    devise_mapping.name
  end


  def resource_class
    devise_mapping.to
  end


  def markdoon(text)
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML,
                                       :autolink => true,
                                       :space_after_headers => true,
                                       :no_intra_emphasis => true)
    markdown.render(text).html_safe
  end
end