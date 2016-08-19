class TweetController < ApplicationController
  before_action :set_tweet, only: [:edit, :update]

  def edit
  end

  def update
    @tweet.update(tweet_params)
  end

  private

  def set_tweet
    @school_class = SchoolClass.find(params[:id])
  end

  def tweet_params
    params.require(:tweet).permit(:title, :message)
  end
end
