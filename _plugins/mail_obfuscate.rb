require "base64"
require "uri"

module ObfuscateMailAddress
  def mailObfuscate(input)

    if input.nil?
      return "Error: input is null"
    end

    rand = Random.new
    idrand = rand.rand(99999999)
    rndpos = rand.rand(input.length - 1)
    style = "<style type=\"text/css\">span#mo_#{idrand} { display:none; }</style>"
    outMail = Base64.strict_encode64(input[0, rndpos] + "<span id=\"mo_#{idrand}\">null</span>" + input[rndpos..-1])
    base64Mail = Base64.strict_encode64(URI::encode(input))

    # See http://techblog.tilllate.com/2008/07/20/ten-methods-to-obfuscate-e-mail-addresses-compared/
    output = "#{style}<a href=\"#\" "
    output += "data-contact=\"#{base64Mail}\" target=\"_blank\" "
    output += "onfocus=\"this.href = 'mailto:' + atob(this.dataset.contact)\">"
    output += "<script type=\"text/javascript\">document.write(atob(\"#{outMail}\"));</script></a>"
    return output
  end
end

Liquid::Template.register_filter(ObfuscateMailAddress)
