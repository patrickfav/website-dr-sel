module ExternalLinkFilter
  def external_link (url, label)
    "<a href=\"#{url}\" rel=\"noopener\">#{label}</a>"
  end
end

Liquid::Template.register_filter(ExternalLinkFilter)