class MainController < ApplicationController
  def test
  end

  def test_post
    @max_name = ''
    @max_score = 0
    @sum_score = 0
    for i in (1..3)
      name = params["course_name_#{i}"]
      score = params["course_score_#{i}"].to_i
      @sum_score += score
      if score > @max_score
        @max_score = score
        @max_name = name
      end
    end
  end

  def test_result
  end
end
