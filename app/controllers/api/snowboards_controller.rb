class Api::SnowboardsController < ApplicationController
  def index
    @snowboards = Snowboard.all
    render "index.json.jb"
  end

  def show
    @snowboard = Snowboard.find_by(id: params[:id])
    render "show.json.jb"
  end
end
