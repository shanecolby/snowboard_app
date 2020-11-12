class Api::SnowboardsController < ApplicationController
  def index
    @snowboards = Snowboard.all
    render "index.json.jb"
  end
end
