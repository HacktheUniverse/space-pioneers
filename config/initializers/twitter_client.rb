TwitterClient = Twitter::REST::Client.new(
  :consumer_key        => ENV['TWITTER_KEY'],
  :consumer_secret     => ENV['TWITTER_SECRET'],
  :bearer_token        => ENV['TWITTER_BEARER_TOKEN'],
  :access_token        => ENV['TWITTER_ACCESS_TOKEN'],
  :access_token_secret => ENV['TWITTER_ACCESS_SECRET']
)
