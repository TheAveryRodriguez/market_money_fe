class VendorService
  def vendor(id)
    get_url("/api/v0/vendors/#{id}")
  end

  def conn
    conn = Faraday.new("http://localhost:3000")
  end

  private

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end
