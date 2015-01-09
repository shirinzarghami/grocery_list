module ApplicationHelper

  def icon_link icon, name, url, link_options = {}
    link_options[:class] ||= ''
    link_options[:class] = link_options[:class] + ' btn btn-link'

    link_to url, link_options do
      content_tag(:span, '', class: "glyphicon glyphicon-#{icon}") + name
    end
  end
end
