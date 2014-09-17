class RssFeedsController < ApplicationController
  def index
    @feed = Feedjira::Feed.fetch_and_parse(%w[http://www.reddit.com/r/Dota2.rss])
    
  end
end

