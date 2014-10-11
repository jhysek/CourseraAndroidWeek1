class MainActivity < Android::App::Activity
  ANSWERS = [42, -10, 0, 100, 1000 ]
  ANSWER  = 42

  def onCreate(savedInstanceState)
    super
    setContentView(resources.getIdentifier('answer_layout', 'layout', packageName))
    answerView = findViewById(resources.getIdentifier('answer_view', 'id', packageName))

    val = findAnswer
    output = (val == 42) ? "42" : "We may never know"
    answerView.setText("The answer to life, the universe and everything is:\n\n#{output}")
  end

  def findAnswer()
    result = -1
    for val in ANSWERS
      result = val if val == ANSWER
    end
    result
  end
end
