class Api::V1::TweetsManagementsApisController < API::V1::ApplicationController
  before_action :set_tweet, only: [:update, :destroy]
  before_action :can_update?, only: [:update]

  #POST localhost:3000/api/v1/tweets/
  def create
    @tweet = TweetsManagementApi.new(tweet_params)
    @tweet.user_id = current_user.id
    @tweet.save
  end

  #PUT localhost:3000/api/v1/tweets/:id/update
  def update
    @tweet.update_attributes(tweet_params)
  end

  #DELETE localhost:3000/api/v1/tweets/:id/destroy
  def destroy
    @tweet.destroy
  end

  private

  def tweet_params
    params.require(:tweet).permit(:description)
  end

  def set_tweet
    @tweet = TweetsManagementApi.find params[:id]
  end

  def can_update?
    if has_role?(:client)
    @tweet = TweetsManagementApi.find params[:id]
    end
  end
end
