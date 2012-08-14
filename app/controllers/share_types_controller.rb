class ShareTypesController < ApplicationController
  def create
    @ShareType = ShareType.new(params[:ShareType])
    respond_to do |format|
      if @ShareType.save
        format.html { redirect_to @ShareType, notice: 'shareType was successfully created.' }
        format.json { render json: @ShareType, status: :created, location: @ShareType }
      else
        format.html { render action: "new" }
        format.json { render json: @ShareType.errors, status: :unprocessable_entity }
      end
    end
  end

  def new
    @ShareType = ShareType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ShareType }
    end
  end

  def edit
  end

  def delete
  end

  def index
  end
end
