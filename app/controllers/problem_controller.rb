class ProblemController < ApplicationController
  def generate
    @problem = Math24.generate_problem
    render json: { problem: @problem }
  end

  def check
    # TODO
  end

  def solve
    # TODO
  end
end
