class QuestionsController < ApplicationController
  def ask
    @ask = params[:question]
  end

  def answer
    @question = params[:question]
    if @question == 'what time is it?'
      return @answer = Time.now
    elsif @question == 'i am going to work'
      return @answer = 'Great!'
    elsif @question[-1] == '?'
      return @answer = 'Silly question, get dressed and go to work!'
    else
      return @answer = "I don't care, get dressed and go to work!"
    end
  end
end