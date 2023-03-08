class V1::CreationsController < ApplicationController
  before_action :authenticate_user!

  def index
    @creations = Creation.all

    render json: CreationSerializer.new(@creations).serializable_hash[:data], status: :ok
  end

  def show
    @creation = Creation.find_by(id: params[:id])

    if @creation.nil?
      render status: 404, json: { error: 'Art piece not found' }.to_json
    else
      render json: CreationSerializer.new(@creation).serializable_hash[:data][:attributes], status: :ok
    end
  end

  def create
    if current_user.admin?
    @creation = Creation.new(creation_params)

    if @creation.save
      render json: CreationSerializer.new(@creation).serializable_hash[:data][:attributes], status: :created
    else
      render status: 500, json: { error: 'Art piece could not be created' }.to_json
    end
    else
      render json: { message: 'You are not authorized to perform this action' }, status: :unauthorized
    end
  end

  def destroy
    if current_user.admin?
    creation = Creation.find_by(id: params[:id])

    if creation.nil?
      render status: 404, json: { error: 'Art piece not found' }.to_json
    else
      creation.destroy
      render json: { message: 'Art piece deleted' }.to_json
    end
    else
      render json: { message: 'You are not authorized to perform this action' }, status: :unauthorized
    end
  end

  private

  def creation_params
    params.require(:creation).permit(:artist, :title, :type_of_work, :medium, :dimensions, :date_of_composition, :art_category, :comment, :price)
  end
end
