class TriviaGameQuestionsController < ApplicationController
  before_action :set_trivia_game_question, only: [:show, :edit, :update, :destroy]

  # GET /trivia_game_questions
  # GET /trivia_game_questions.json
  def index
    @trivia_game_questions = TriviaGameQuestion.all
  end

  # GET /trivia_game_questions/1
  # GET /trivia_game_questions/1.json
  def show
  end

  # GET /trivia_game_questions/new
  def new
    @trivia_game_question = TriviaGameQuestion.new
  end

  # GET /trivia_game_questions/1/edit
  def edit
  end

  # POST /trivia_game_questions
  # POST /trivia_game_questions.json
  def create
    @trivia_game_question = TriviaGameQuestion.new(trivia_game_question_params)

    respond_to do |format|
      if @trivia_game_question.save
        format.html { redirect_to @trivia_game_question, notice: 'Trivia game question was successfully created.' }
        format.json { render :show, status: :created, location: @trivia_game_question }
      else
        format.html { render :new }
        format.json { render json: @trivia_game_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trivia_game_questions/1
  # PATCH/PUT /trivia_game_questions/1.json
  def update
    respond_to do |format|
      if @trivia_game_question.update(trivia_game_question_params)
        format.html { redirect_to @trivia_game_question, notice: 'Trivia game question was successfully updated.' }
        format.json { render :show, status: :ok, location: @trivia_game_question }
      else
        format.html { render :edit }
        format.json { render json: @trivia_game_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trivia_game_questions/1
  # DELETE /trivia_game_questions/1.json
  def destroy
    @trivia_game_question.destroy
    respond_to do |format|
      format.html { redirect_to trivia_game_questions_url, notice: 'Trivia game question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trivia_game_question
      @trivia_game_question = TriviaGameQuestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trivia_game_question_params
      params.require(:trivia_game_question).permit(:trivia_game_id, :question, :right)
    end
end
