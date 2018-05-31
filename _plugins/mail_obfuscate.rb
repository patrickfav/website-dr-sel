require "base64"
require "uri"

module ObfuscateMailAddress
  def mailObfuscate(input)
    reversed_input = input
    base64Mail = Base64.encode64(URI::encode(input))

    # See http://techblog.tilllate.com/2008/07/20/ten-methods-to-obfuscate-e-mail-addresses-compared/
    output = "<a href=\"#\" style=\"direction: rtl; unicode-bidi: bidi-override;\" "
    output += "data-contact=\"#{base64Mail}\" target=\"_blank\" "
    output += "onfocus=\"this.href = 'mailto:' + atob(this.dataset.contact)\">"
    output += "#{reversed_input.reverse}</a>"
    return output
  end
end

Liquid::Template.register_filter(ObfuscateMailAddress)