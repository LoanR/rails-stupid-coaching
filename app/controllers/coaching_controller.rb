class CoachingController < ApplicationController
  def answer
    @query = params[:query]
    if @query == @query.upcase
      @coach_answer = coach_answer_enhanced(@query)
    else
      @coach_answer = coach_answer(@query)
    end
  end

  def ask
  end

  private

  def coach_answer(your_message)
    if your_message == "I am going to work right now!"
      ""
    elsif your_message.include? "?"
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    if your_message == "I AM GOING TO WORK RIGHT NOW!"
      your_message = your_message.downcase.capitalize
      ""
    elsif your_message == your_message.upcase
      "I can feel your motivation! " + coach_answer(your_message)
    else
      coach_answer(your_message)
    end
  end
end
