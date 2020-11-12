class Api::SnowboardsController < ApplicationController
  def index
    render "index.json.jb"
  end
end
