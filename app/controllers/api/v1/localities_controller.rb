class Api::V1::LocalitiesController < ApplicationController
  def index
    @localities = Locality.all
  end
end
