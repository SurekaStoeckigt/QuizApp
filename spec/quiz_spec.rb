require "./lib/quiz.rb"

describe Quiz do

  it "asks the user a question" do
    quiz = Quiz.new
    expect(STDOUT).to receive(:puts).with("What is your name?")
    quiz.question(1)

    # expect(quiz.question(1)).to eq("What is your name?")
  end

  # it "allows user to enter a response" do
  #    quiz = Quiz.new
  #    quiz.question(1)
  #    allow_any_instance_of(Quiz).to receive(:gets).and_return('Player')
  #    expect(quiz.res).to eq('Player')
  # end

  it "allows user to enter a response" do
     quiz = Quiz.new
     quiz.question(1)
     allow_any_instance_of(Quiz).to receive(:gets).and_return('Player')
     expect(quiz.check_answer).to eq(true)
  end

end
