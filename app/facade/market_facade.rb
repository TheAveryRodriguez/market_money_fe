class MarketFacade
  def self.all_markets
    @markets = MarketService.new.all_markets[:results]
  end
end
