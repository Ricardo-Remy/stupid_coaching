class CoachingsController < ApplicationController
  def answer

  @time = params[:time]
  @response = coach_answer_enhanced(@time)


  end

  def ask

  end

def coach_answer(your_message)
  if your_message == 'I am going to work right now!'
    return ""
  elsif your_message.strip.end_with? "?"
    return "Silly question, get dressed and go to work!"
  else
    return "I don't care, get dressed and go to work!"
  end
end

  def coach_answer_enhanced(your_message)
    return "" if your_message.downcase == 'i am going to work right now!'

    intro = ""
    if your_message == your_message.upcase
      intro = "I can feel your motivation! "
    end

    classic_coach_message = coach_answer(your_message)
    return intro + classic_coach_message
  end
end
