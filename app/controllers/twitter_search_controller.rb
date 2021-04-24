class TwitterSearchController < ApplicationController
  def search
    @result = twitter_client.search(params[:seach_text], {count: 50}).take(100) if params[:seach_text].present?
  end

  private

  def twitter_client
    @twitter_client ||= Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV['CONSUMER_KEY']
      config.consumer_secret     = ENV['CONSUMER_SECRET']
      config.access_token        = ENV['ACCESS_TOKEN']
      config.access_token_secret = ENV['ACCESS_SECRET']
    end
  end
end
