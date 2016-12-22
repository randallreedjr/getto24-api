class ApplicationController < ActionController::API
  def page_not_found
    render json: {error: "page not found"}, status: 404
  end
end
