class TweetManagementsController < ApplicationController
  before_action :set_tweet_management, only: [:show, :edit, :update, :destroy]

  # GET /tweet_managements
  # GET /tweet_managements.json
  def index
    @tweet_managements = TweetManagement.all
  end

  # GET /tweet_managements/1
  # GET /tweet_managements/1.json
  def show
  end

  # GET /tweet_managements/new
  def new
    @tweet_management = TweetManagement.new
  end

  # GET /tweet_managements/1/edit
  def edit
  end

  # POST /tweet_managements
  # POST /tweet_managements.json
  def create
    @tweet_management = TweetManagement.new(tweet_management_params)

    respond_to do |format|
      if @tweet_management.save
        format.html { redirect_to @tweet_management, notice: 'Tweet management was successfully created.' }
        format.json { render :show, status: :created, location: @tweet_management }
      else
        format.html { render :new }
        format.json { render json: @tweet_management.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tweet_managements/1
  # PATCH/PUT /tweet_managements/1.json
  def update
    respond_to do |format|
      if @tweet_management.update(tweet_management_params)
        format.html { redirect_to @tweet_management, notice: 'Tweet management was successfully updated.' }
        format.json { render :show, status: :ok, location: @tweet_management }
      else
        format.html { render :edit }
        format.json { render json: @tweet_management.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tweet_managements/1
  # DELETE /tweet_managements/1.json
  def destroy
    @tweet_management.destroy
    respond_to do |format|
      format.html { redirect_to tweet_managements_url, notice: 'Tweet management was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tweet_management
      @tweet_management = TweetManagement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tweet_management_params
      params.require(:tweet_management).permit(:name, :description)
    end
end
