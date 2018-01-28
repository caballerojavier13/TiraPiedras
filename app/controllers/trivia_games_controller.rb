class TriviaGamesController < ApplicationController
  before_action :set_trivia_game, only: [:show, :edit, :update, :destroy]

  # GET /trivia_games
  # GET /trivia_games.json
  def index
    @trivia_games = TriviaGame.all
  end

  # GET /trivia_games/1
  # GET /trivia_games/1.json
  def show
  end

  # GET /trivia_games/new
  def new
    @trivia_game = TriviaGame.new
  end

  # GET /trivia_games/1/edit
  def edit
  end

  # POST /trivia_games
  # POST /trivia_games.json
  def create
    @trivia_game = TriviaGame.new(trivia_game_params)

    respond_to do |format|
      if @trivia_game.save
        format.html { redirect_to @trivia_game, notice: 'Trivia game was successfully created.' }
        format.json { render :show, status: :created, location: @trivia_game }
      else
        format.html { render :new }
        format.json { render json: @trivia_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trivia_games/1
  # PATCH/PUT /trivia_games/1.json
  def update
    respond_to do |format|
      if @trivia_game.update(trivia_game_params)
        format.html { redirect_to @trivia_game, notice: 'Trivia game was successfully updated.' }
        format.json { render :show, status: :ok, location: @trivia_game }
      else
        format.html { render :edit }
        format.json { render json: @trivia_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trivia_games/1
  # DELETE /trivia_games/1.json
  def destroy
    @trivia_game.destroy
    respond_to do |format|
      format.html { redirect_to trivia_games_url, notice: 'Trivia game was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trivia_game
      @trivia_game = TriviaGame.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trivia_game_params
      params.require(:trivia_game).permit(:title, :punishment)
    end
end
