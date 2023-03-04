class V1::CreationsController < ApplicationController

  def index
    render json: Creation.all.to_json
  end

  def show
    creation = Creation.find_by(id: params[:id])

    if creation.nil?
      render status: 404, json: { error: 'Art piece not found' }.to_json
    else
      render json: creation.to_json
    end
  end

  def create
    creation = Creation.new(creation_params)

    if creation.save
      render json: creation.to_json
    else
      render status: 500, json: { error: 'Art piece could not be created' }.to_json
    end
  end

  def destroy
    creation = Creation.find_by(id: params[:id])

    if creation.nil?
      render status: 404, json: { error: 'Art piece not found' }.to_json
    else
      creation.destroy
      render json: { message: 'Art piece deleted' }.to_json
    end
  end

  private

  def creation_params
    params.require(:creation).permit(:artist, :title, :type_of_work, :medium, :dimensions, :date_of_composition, :art_category, :country_of_origin, :comment, :price)
  end
end
