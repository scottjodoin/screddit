class SubRedditsController < ApplicationController
  before_action :set_sub_reddit, only: [:show, :edit, :update, :destroy]

  # GET /sub_reddits
  # GET /sub_reddits.json
  def index
    @sub_reddits = SubReddit.all
  end

  # GET /sub_reddits/1
  # GET /sub_reddits/1.json
  def show
  end

  # GET /sub_reddits/new
  def new
    @sub_reddit = SubReddit.new
  end

  # GET /sub_reddits/1/edit
  def edit
  end

  # POST /sub_reddits
  # POST /sub_reddits.json
  def create
    @sub_reddit = SubReddit.new(sub_reddit_params)

    respond_to do |format|
      if @sub_reddit.save
        format.html { redirect_to @sub_reddit, notice: 'Sub reddit was successfully created.' }
        format.json { render :show, status: :created, location: @sub_reddit }
      else
        format.html { render :new }
        format.json { render json: @sub_reddit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sub_reddits/1
  # PATCH/PUT /sub_reddits/1.json
  def update
    respond_to do |format|
      if @sub_reddit.update(sub_reddit_params)
        format.html { redirect_to @sub_reddit, notice: 'Sub reddit was successfully updated.' }
        format.json { render :show, status: :ok, location: @sub_reddit }
      else
        format.html { render :edit }
        format.json { render json: @sub_reddit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_reddits/1
  # DELETE /sub_reddits/1.json
  def destroy
    @sub_reddit.destroy
    respond_to do |format|
      format.html { redirect_to sub_reddits_url, notice: 'Sub reddit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_reddit
      @sub_reddit = SubReddit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sub_reddit_params
      params.require(:sub_reddit).permit(:name, :description)
    end
end
