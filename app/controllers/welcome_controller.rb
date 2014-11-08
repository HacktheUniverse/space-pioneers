class WelcomeController < ApplicationController
  def index
    @events = Event.all
  end

  def choices
    if params[:event_id]
      # @tweets = TwitterClient.search("@_spacepioneer ##{params[:event_id]}", result_type: "recent").take(5).map do |t|
      #   {
      #     choice: t.hashtags.first.text,
      #     handle: t.user.screen_name
      #   }
      # end

      tweet = TwitterClient.search("@_spacepioneer ##{params[:event_id]}", result_type: "recent").first

      @tweet = {
        choice: tweet.hashtags.first.text,
        handle: tweet.user.screen_name
      }

      render json: @tweet
    else
      render json: { error: "Need to supply event_id param" }
    end
  end
end
