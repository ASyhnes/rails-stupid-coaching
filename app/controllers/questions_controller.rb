class QuestionsController < ApplicationController

  def ask
    # est appellée pars view/ask
  end

  def answer
    # est appellée pars view/answer
    @ask = params[:test ]
    # correspond a la clef du hash produit par la méthode ask
    @answer =
    if @ask == "I am going to work"
      "Great!"
    elsif @ask.end_with? "?"
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
