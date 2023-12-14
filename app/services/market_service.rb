class MarketService
  def self.market_index
    response = get_url("/api/v0/markets")
    response[:data]
  end

  def self.market_show(id)
    response = get_url("/api/v0/markets/#{id}")
  end

  def self.market_vendors(id)
    response = get_url("/api/v0/markets/#{id}/vendors")
  end

  def self.get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: "http://localhost:3000")
  end
end
