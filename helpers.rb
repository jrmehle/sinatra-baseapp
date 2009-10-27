module Helpers
  include Rack::Utils
  alias_method :h, :escape_html
  
  
  def image_tag(path_to_file, options = {})
    path_to_file = File.join '/images', path_to_file
    "<img src=\"#{path_to_file}\" width=\"#{options[:width]}\" height=\"#{options[:height]}\" alt=\"#{options[:alt]}\" #{'id="' + options[:id] + '"' if options[:id]} #{'class="' + options[:class] + '"' if options[:class]} #{'title="' + options[:title] + '"' if options[:title]} />"
  end
  
  def current_page?(path)
    path == request.path_info
  end
  
  def link_to_unless_current(text, path = "#")
    if current_page? path
      "<span id=\"current\">#{text}</span>"
    else
      "<a href=\"#{path}\">#{text}</a>"
    end
  end
  
  def strip_tags(str)
    str.gsub(/<\/?[^>]*>/, "")
  end
  
  # Ripped off this functionality from the Rails helpers
  def mail_to(email_address = '', text = nil, options = {})
    string = ''
    email_address = email_address.to_s

    email_address_obfuscated = email_address.dup
    
    email_address_encoded = ''
    email_address_obfuscated.each_byte do |c|
      email_address_encoded << sprintf("&#%d;", c)
    end

    protocol = 'mailto:'
    protocol.each_byte { |c| string << sprintf("&#%d;", c) }

    email_address.each_byte do |c|
      char = c.chr
      string << (char =~ /\w/ ? sprintf("%%%x", c) : char)
    end
    
    "<a href=\"#{string}\" class=\"email #{options[:class] if options.include?(:class)}\">#{text || email_address_encoded}</a>"
  end

  # uncomment and add the routes and stylesheets needed
  # def stylesheet_for_current_page
  #   if ['/', '/services', '/projects', '/process', '/contact'].include? request.path_info
  #     stylesheet = request.path_info.gsub('/', '')
  #     stylesheet = 'index' if request.path_info == '/'
  #     return "<link rel=\"stylesheet\" href=\"/stylesheets/#{stylesheet}.css\" type=\"text/css\" media=\"screen\" charset=\"utf-8\">"
  #   end
  # end
end
