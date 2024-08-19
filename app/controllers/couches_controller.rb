class CouchesController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.json { render json: Couch.all }
    end
  end
end
