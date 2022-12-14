class CheesesController < ApplicationController

  def index
    cheeses = Cheese.all
    render json: cheeses
  end

  def show
    #find a cheeses using the ID from the URL
    cheese= Cheese.find_by(id: params[:id])
    render json: cheese
    #send a JSON response using that cheese object
  end

end
