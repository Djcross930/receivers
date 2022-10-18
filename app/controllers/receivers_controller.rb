class ReceiversController < ApplicationController
  def index
    receivers = Receiver.all
    render json: receivers
  end

end
