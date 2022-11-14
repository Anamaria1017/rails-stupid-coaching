class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @search_term = params[:question]

    @answer = if @search_term.start_with?('I am going to work')
                'Great!'
              elsif @search_term.end_with?('?')
                'Silly question, get dressed and go to work!'
              else
                'I dont care, get dressed and go to work!'
              end
  end
end
