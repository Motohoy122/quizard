class AnswersController < ApplicationController
  def index

  end

  def new
    @answer = Answer.new
  end

  def create
    @answer = Answer.create(answer_params)
    redirect_to root_path
  end

  def show
    @answer = Answer.find(params[:id])
  end

  private

  def answer_params
    params.require(:answer).permit(:response)
  end
end
