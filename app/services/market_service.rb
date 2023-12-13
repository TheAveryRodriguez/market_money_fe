class MarketService
  def self.conn
    Faraday.new(url: "https://localhost:3000")
  end

  def get_url(url)
  end

  def conn
  end
end
