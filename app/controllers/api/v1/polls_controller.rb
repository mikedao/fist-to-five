class Api::V1::PollsController < ApplicationController
  skip_forgery_protection

  def create
    poll = Poll.create(question: params[:text])
    response =
        {
          "response_type": "in_channel",
          "text": "New Fist of Five: #{poll.question} \n Url: #{request.base_url}/polls/#{poll.id}"
        }

    render json: response, status: :ok
  end
end
