class PollsController < ApplicationController
  def new
  end

  def create
    poll = Poll.create(question: params[:question])
    redirect_to "/polls/#{poll.id}"
  end

  def show
    @poll = Poll.find(params[:id])
  end

  def update
    poll = Poll.find(params[:id])
    if params[:value] == "1"
      poll.increment!(:ones)
    elsif params[:value] == "2"
      poll.increment!(:twos)
    elsif params[:value] == "3"
      poll.increment!(:threes)
    elsif params[:value] == "4"
      poll.increment!(:fours)
    elsif params[:value] == "5"
      poll.increment!(:fives)
    else
      redirect_to "/polls/#{poll.id}"
    end
    redirect_to "/polls/#{poll.id}"
  end
end
