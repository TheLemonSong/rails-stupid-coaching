class CoachingController < ApplicationController
  def answer
    @question = params[:question_asked]

    @answer = coach_answer_enhanced(@question)
  end

  # This isn't needed, but useful to have here to see anyway.
  def ask
  end

  private

  def coach_answer_enhanced(question)
    if question == "I AM GOING TO WORK RIGHT NOW!"
      return ""
    elsif question == question.upcase
      return "I can feel your motivation! #{coach_answer(question)}"
    else
      return coach_answer(question)
    end
  end

  def coach_answer(your_message)
  # TODO: return coach answer to your_message
  # Take your message and check for '?', crea
    if your_message.include? "?"
      return "Silly question, get dressed and go to work!"
    elsif your_message == "I am going to work right now!"
      return ""
    else
      return "I don't care, get dressed and go to work!"
    end
  end

end
