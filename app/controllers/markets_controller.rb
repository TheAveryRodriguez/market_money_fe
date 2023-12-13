class MarketsController < applicationController
  def index
    @markets = MarketFacade.all_markets
  end
end
