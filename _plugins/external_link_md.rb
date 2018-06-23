module ExternalLinkFilter
  def external_link (url, label)
    "<a href=\"#{url}\" rel=\"external noopener\" class=\"external\">#{label}</a>"
  end
end

Liquid::Template.register_filter(ExternalLinkFilter)
