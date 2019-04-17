class Quiz
# attr_reader :response

  def question(question_number)
    puts "What is your name?"
  end

  # def res
  #   gets.chomp
  # end
  #
  # def check_answer(response)
  #   response == 'Player'
  # end

  def check_answer
    gets.chomp == 'Player'
  end

end
