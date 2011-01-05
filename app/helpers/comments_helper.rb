module CommentsHelper
  def link_to_replace(name, url)
    id = "tmp_#{SecureRandom.hex(5)}"
    linkid = "link_#{SecureRandom.hex(5)}"
    url = url_for(url)
    
    text = "<div id=\"#{id}\"></div>"
    text+= link_to_function name, "load#{id}()", :id => linkid
    text+= "<script type=\"text/javascript\">"
    text+= "function load#{id}() {"
    text+=   "$.get(\"#{url}\", function(data){"
    text+=     "$(\"##{id}\").after(data);"
    text+=     "$(\"##{id}\").remove();"
    text+=     "$(\"##{linkid}\").remove();"
    text+=   "});"
    text+= "}"
    text+= "</script>"
    
    return text.html_safe
  end
end
