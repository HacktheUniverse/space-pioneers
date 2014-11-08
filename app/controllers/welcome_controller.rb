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

      event_id = params[:event_id]
      tweet = TwitterClient.search("@_spacepioneer ##{event_id}", result_type: "recent").first
      choice_letter = tweet.hashtags.first.text
      choice_num = case choice_letter.downcase
                   when 'a' then (event_id.to_i * 2) - 1
                   when 'b' then event_id.to_i * 2
                   end


      @tweet = {
        choice: choice_num,
        handle: tweet.user.screen_name
      }

      render json: @tweet
    else
      render json: { error: "Need to supply event_id param" }
    end
  end
end
