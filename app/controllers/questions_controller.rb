class QuestionsController < ApplicationController
  def ask
  end

  def answer
    message = ["Great", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]

    @response =
      if params[:question] == "I am going to work"
        message[0]
      elsif params[:question].include?("?")
        message[1]
      else
        message[2]
      end
  end
end
