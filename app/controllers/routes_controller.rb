class RoutesController < ApplicationController
  def index
    respond_to do |format|
      format.js{ render json: current_user.routes }
      format.html { render :index }
    end
  end

  def show
    render json: current_user.routes.find( params[:id] )
  end

  def create
    render json: current_user.routes.create( params[:route] )
  end

  def update
    route = current_user.routes.find params[:id]
    # Do something smart here
    route.save
    render json: route
  end

  def destroy
    render json: current_user.routes.find(params[:id]).destroy
  end
end
