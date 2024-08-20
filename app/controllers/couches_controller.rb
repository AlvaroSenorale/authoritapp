class CouchesController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.json { render json: couches_collection }
    end
  end

  def show
    # debugger
    respond_to do |format|
      format.html
      format.json { render json: Couch.find(params[:id]) }
    end
  end

  private

  def couches_collection
    Couch.all
  end
end
