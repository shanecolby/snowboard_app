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

  def update
    @snowboard = Snowboard.find_by(id: params[:id])

    @snowboard.brand = params[:brand]
    @snowboard.price = params[:price]
    @snowboard.shape = params[:shape]
    @snowboard.description = params[:description]
    @snowboard.save

    render "show.json.jb"
  end

  def destroy
    @snowboard = Snowboard.find_by(id: params[:id])
    @snowboard.destroy
    render json: {message: "snowboard removed"}
  end
end
