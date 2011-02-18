class RotatorCell < Cell::Rails

  def news
    render if request.request_uri == "/"
  end
end
