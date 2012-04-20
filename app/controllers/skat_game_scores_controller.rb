class SkatGameScoresController < ApplicationController
  # GET /skat_game_scores
  # GET /skat_game_scores.json
  def index
    @skat_game_scores = SkatGameScore.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @skat_game_scores }
    end
  end

  # GET /skat_game_scores/1
  # GET /skat_game_scores/1.json
  def show
    @skat_game_score = SkatGameScore.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @skat_game_score }
    end
  end

  # GET /skat_game_scores/new
  # GET /skat_game_scores/new.json
  def new
    @skat_game_score = SkatGameScore.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @skat_game_score }
    end
  end

  # GET /skat_game_scores/1/edit
  def edit
    @skat_game_score = SkatGameScore.find(params[:id])
  end

  # POST /skat_game_scores
  # POST /skat_game_scores.json
  def create
    @skat_game_score = SkatGameScore.new(params[:skat_game_score])

    respond_to do |format|
      if @skat_game_score.save
        format.html { redirect_to @skat_game_score, notice: 'Skat game score was successfully created.' }
        format.json { render json: @skat_game_score, status: :created, location: @skat_game_score }
      else
        format.html { render action: "new" }
        format.json { render json: @skat_game_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /skat_game_scores/1
  # PUT /skat_game_scores/1.json
  def update
    @skat_game_score = SkatGameScore.find(params[:id])

    respond_to do |format|
      if @skat_game_score.update_attributes(params[:skat_game_score])
        format.html { redirect_to @skat_game_score, notice: 'Skat game score was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @skat_game_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skat_game_scores/1
  # DELETE /skat_game_scores/1.json
  def destroy
    @skat_game_score = SkatGameScore.find(params[:id])
    @skat_game_score.destroy

    respond_to do |format|
      format.html { redirect_to skat_game_scores_url }
      format.json { head :no_content }
    end
  end
end
