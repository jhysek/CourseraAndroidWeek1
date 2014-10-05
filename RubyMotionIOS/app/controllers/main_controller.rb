class MainController < UIViewController
  extend IB
  outlet :answerView, UILabel

  ANSWERS = [42, -10, 0, 100, 1000 ]
  ANSWER  = 42

  def viewDidLoad
    val = findAnswer
    output = (val == 42) ? "42" : "We may never know"
    answerView.text = "The answer to life, the universe and everything is:\n\n#{output}"
   end

  def findAnswer
    result = -1
    for val in ANSWERS
      result = val if val == ANSWER
    end
    result
  end
end
