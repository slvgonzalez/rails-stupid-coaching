
class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    if 'I am going to work'.downcase == @question.downcase
      @stupid_answer = 'Great!'
    elsif @question.ends_with?('?')
      @stupid_answer = 'Silly question, get dressed and go to work!'
    else
      @stupid_answer = "I don't care, get dressed and go to work!"
    end
  end
end
