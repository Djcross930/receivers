class ReceiversController < ApplicationController
  def index
    receivers = Receiver.all
    render json: receivers
  end

  def show
    receiver = Receiver.find_by(id: params[:id])
    render json: receiver
  end

  def create
    receiver = Receiver.new
    receiver.name = params[:name]
    receiver.wins = params[:wins]
    receiver.save
    render json: receiver
  end

end
