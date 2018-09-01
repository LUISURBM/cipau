class Api::V1::LocalityController < ApplicationController

def index
 @localities = Locality.all
end

def create
  @locality = Locality.new(locality_params)
	if @localty.save
      render status: :created
    else
      render json: @localty.errors, status: :unprocessable_entity
    end 
  redirect_to @locality
end


private
  def locality_params
    params.require(:locality).permit(:name, :codlocality, :description)
  end

end
