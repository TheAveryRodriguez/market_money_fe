class MarketFacade
  def self.all_markets
    MarketService.market_index.each do |data|
      Market.new(data)
    end
  end

  def self.market(id)
    response = MarketService.market_show(id)
    Market.new(response[:data])
  end

  def self.market_vendors(id)
    MarketService.market_vendors(id)[:data].map do |vendor_data|
      Vendor.new(vendor_data)
    end
  end
end
