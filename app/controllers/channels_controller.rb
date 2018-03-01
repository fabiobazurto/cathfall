class ChannelsController < ApplicationController

  def index
    @services = Service.actives
  end
end
