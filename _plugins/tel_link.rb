module TelephoneNumberFilter
  def tel_link (input)
    "<a href=\"tel:#{input.gsub(/\s+/, "")}\">#{input}</a>"
  end
end

Liquid::Template.register_filter(TelephoneNumberFilter)