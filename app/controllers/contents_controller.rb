class ContentsController < ApplicationController
  def index
    @contents = Content.where("service_id=?",params[:id])
    @service = Service.find(params[:id])
  end
end
