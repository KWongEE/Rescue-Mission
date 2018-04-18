require 'pry'
class AnswersController < ApplicationController

  # def index
  #   questionID = params[:id]
  #   @answers = Answer.where(question_id:questionID)
  #   binding.pry
  # end
  #
  # end

  def create
    @answer = Answer.new(description: params[:answer][:description], question_id: params[:question_id])
    @question = Question.find(params[:question_id])
    if @answer.save
      redirect_to @question
    else
      redirect_to @question

    end
  end

end
