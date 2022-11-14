class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @search_term = params[:question]

    if @search_term.start_with?('I am going to work')
      @answer = 'Great!'
    elsif @search_term.include? '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I dont care, get dressed and go to work!'
    end
  end
end
