class Api::V1::PollsController < ApplicationController
  skip_forgery_protection

  def create
    poll = Poll.create(question: params[:question])
    render json: poll
  end
end
