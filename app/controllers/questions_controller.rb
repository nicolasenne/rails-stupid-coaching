class QuestionsController < ApplicationController
  def ask
    @ask = params[:ask]
  end

  def answer
    @ask = params[:ask]

    # TODO: return coach answer to your_message, with additional custom rules of yours!
    if @ask == "I am going to work right now!" || @ask == "I am going to work right now!".upcase
      return @answer = ""
    elsif @ask == @ask.upcase && @ask.include?("?")
      return @answer = "I can feel your motivation! Silly question, get dressed and go to work!"
    elsif @ask.include?("?")
      return @answer = "Silly question, get dressed and go to work!"
    elsif @ask == @ask.upcase
      return @answer = "I can feel your motivation! I don't care, get dressed and go to work!"
    else
      return @answer = "I don't care, get dressed and go to work!"
    end
  end
end
