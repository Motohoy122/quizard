class QuizzesController < ApplicationController
  def index
    @answers = Answer.all
  end
end
