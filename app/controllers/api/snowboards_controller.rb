class Api::SnowboardsController < ApplicationController
  def index
    @snowboards = Snowboard.all
    render "index.json.jb"
  end

  def show
    @snowboard = Snowboard.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @snowboard = Snowboard.new(
      brand: params[:brand], 
      price: params[:price], 
      shape: params[:shape], 
      description: params[:description])
      @snowboard.save
    render "show.json.jb"
  end
end
