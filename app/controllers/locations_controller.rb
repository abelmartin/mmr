class LocationsController < ApplicationController
  def index
    respond_to do |format|
      format.js{ render :json, current_user.locations }
      format.html { render :index }
    end
  end

  def show
    render :json, current_user.locations.find( params[:id] )
  end

  def create
    render :json, current_user.locations.create( params[:location] )
  end

  def update
    location = current_user.locations.find param[:id]
    render :json, location.update( params[:location] )
  end

  def destroy
    render :json, Location.destroy.where(user: current_user, id: params[:id])
  end
end
