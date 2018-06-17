require "base64"

module Base64Filter
  def base64_encode (input)
    Base64.urlsafe_encode64(input, padding: false)
  end
end

Liquid::Template.register_filter(Base64Filter)