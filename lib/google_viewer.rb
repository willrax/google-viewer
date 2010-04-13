module Google

  class GoogleViewer

    %w[CGI].map {|x| require x}

    @@base_url = "http://docs.google.com/viewer?"
  
    def initialize(url)
      @url = url
      @viewer_url = @@base_url + "url=" + escaped(url)
    end
  
    def url
      @url
    end
  
    def viewer_url
      @viewer_url
    end

    def escaped(url)
        CGI::escape(url)
    end

  end

end