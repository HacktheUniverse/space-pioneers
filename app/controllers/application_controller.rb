class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def home
    client = twitter_client
    num = 34
    tweets = client.search("@_spacepioneer ##{34}", result_type: "recent").take(5).map do |t|
      {
        choice: t.hashtags.first.text,
        handle: t.user.name
      }
    end
    binding.pry
  end

  def twitter_client
    Twitter::REST::Client.new(
      :consumer_key        => ENV['TWITTER_KEY'],
      :consumer_secret     => ENV['TWITTER_SECRET'],
      :bearer_token        => ENV['TWITTER_BEARER_TOKEN'],
      :access_token        => ENV['TWITTER_ACCESS_TOKEN'],
      :access_token_secret => ENV['TWITTER_ACCESS_SECRET']
    )
  end
end
