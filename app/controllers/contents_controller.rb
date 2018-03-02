class ContentsController < ApplicationController
  def show
    @content = Content.find(params[:id])
    @service = @content.service
  end

  def index

    @contents = Content.where("service_id=?",params[:id])
    @service = Service.find(params[:id])

  end
end
