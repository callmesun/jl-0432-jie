class ShareTypeController < ApplicationController
  def create
  end

  def new
    @ShareType=ShareType.new;
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ShareType }
    end
  end

  def index
  end

  def edit
  end
end
