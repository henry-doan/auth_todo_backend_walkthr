class Api::MsgsController < ApplicationController
  before_action :set_msg, only: [:show, :update, :destroy]
  
  def index
    render json: Msg.all
  end

  def show
    render json: @msg
  end

  def create
    @msg = Msg.new(msg_params)
    if @msg.save
      render json: @msg
    else
      render json: { errors: @msg.errors }, status: :unprocessable_entity
    end
  end

  def update
    if @msg.update(msg_params)
      render json: @msg
    else
      render json: { errors: @msg.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    @msg.destroy
    render json: { message: 'Message Deleted' }
  end

  private 
    def set_msg
      @msg = Msg.find(params[:id])
    end
end
