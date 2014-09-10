module ApplicationHelper
  def conv_break(text)
    return if text.nil?
    text.gsub!(/\r\n/, '<br>')
    text.gsub!(/(\n|\r)/, '<br>')
    sanitize(text, tags: %w(br))
  end
end
