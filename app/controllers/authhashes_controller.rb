class AuthhashesController < ApplicationController
  def index
    @authhashes = Authhash.all
  end

  def show
    @authhash = Authhash.find(params[:id])
  end

  def new
    @authhash = Authhash.new
  end

  def create
    @authhash = Authhash.new
    @authhash.provider = params[:provider]

    if @authhash.save
      redirect_to "/authhashes", :notice => "Authhash created successfully."
    else
      render 'new'
    end
  end

  def edit
    @authhash = Authhash.find(params[:id])
  end

  def update
    @authhash = Authhash.find(params[:id])

    @authhash.provider = params[:provider]

    if @authhash.save
      redirect_to "/authhashes", :notice => "Authhash updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @authhash = Authhash.find(params[:id])

    @authhash.destroy

    redirect_to "/authhashes", :notice => "Authhash deleted."
  end
end
