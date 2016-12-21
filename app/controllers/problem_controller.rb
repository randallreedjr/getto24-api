require 'math24'

class ProblemController < ApplicationController
  def generate
    @problem = Math24.new.generate_problem
    render json: { problem: @problem }
  end

  def check
    # TODO
  end

  def solve
    # TODO
  end
end
