class OpinionsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]
  def create
    @opinion = Opinion.new(opinion_params)
    if @opinion.save
        render json: @opinion, status: :created, location: @opinion
    else
        render json: @opinion.errors, status: :unprocessable_entity
    end
  end

  private

  def opinion_params
    params.require(:opinion).permit(:name, :body, :restaurant_id)
  end

end
