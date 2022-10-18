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

  def update
    receiver = Receiver.find_by(id: params[:id])
    receiver.name = params[:name] || receiver.name
    receiver.wins = params[:wins] || receiver.wins
    receiver.save
    render json: receiver

  end

  def destroy
    receiver = Receiver.find_by(id: params[:id])
    receiver.destroy
    render json: {message: "Destroyed"}

  end

end
