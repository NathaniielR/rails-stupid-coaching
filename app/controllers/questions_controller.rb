class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]  # Make sure this receives the form input
    if @question == "I am going to work"
      @answer = "Great!"
    elsif @question&.ends_with?("?")  # Using & to prevent nil errors
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
