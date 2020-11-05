class Api::V1::GiftsController < ApplicationController
  def index
    gifts = Gift.all
    render json: gifts, except: [:created_at, :updated_at]
  end

  def create
    gift = Gift.new(gift_params)
    if gift.save
      render json: gift, status: :accepted
    else
      render json: {errors: gift.errors.full_messages}, status: :unprocessible_entity
    end
  end

  private
  def gift_params
    params.require(gift).permit(:name, :store, :person_id)
  end

end
