class WelcomeController < ApplicationController
  def index
  end

  def choices
    if params[:event_id]
      @tweets = twitter_client.search("@_spacepioneer ##{params[:event_id]}", result_type: "recent").take(5).map do |t|
        {
          choice: t.hashtags.first.text,
          handle: t.user.name
        }
      end

      render json: @tweets
    else
      render json: { error: "Need to supply event_id param" }
    end
  end

  private

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
