class GoogleView

  %w[CGI].map {|x| require x}

  @@base_url = "http://docs.google.com/viewer?"
  
  def initialize(url)
    @url = url
  end
  
  def viewer_url
    return @@base_url + "url=" + escaped(@url)
  end

  def escaped(url)
    CGI::escape(url)
  end

end