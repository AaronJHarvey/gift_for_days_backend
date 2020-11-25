class Api::V1::GiftsController < ApplicationController
  def index
    gifts = Gift.all
    render json: GiftSerializer.new(gifts)
  end

  def create
    gift = Gift.new(gift_params)
    if gift.save
      render json:GiftSerializer.new(gift), status: :accepted
    else
      render json: {errors: gift.errors.full_messages}, status: :unprecessible_entity
    end
  end

  def destroy
    gift = Gift.find_by_id(params[:id])
    gift.delete

  end

  private
  def gift_params
    params.require(:gift).permit(:name, :store, :person_id)
  end

end
