class FavoursController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @favours = Favour.geocoded.left_outer_joins(:contract).where("contracts.id IS NULL")

    @markers = @favours.map do |favour|
      {
        lat: favour.latitude,
        lng: favour.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { favour: favour })
      }
    end
  end

  def myfavours
    @favours = Favour.where(user: current_user)
  end

  def show
    @favour = Favour.geocoded.find(params[:id])
    @marker = {
      lat: @favour.latitude,
      lng: @favour.longitude
    }
  end

  def new
    @favour = Favour.new
  end

  def create
    @favour = current_user.favours.build(favour_params)
    if @favour.save
      redirect_to new_favour_payment_path(@favour)
    else
      render 'new'
    end
  end

  def edit
    @favour = Favour.find(params[:id])
  end

  def update
    @favour = Favour.find(params[:id])
    @favour.update(favour_params)
    redirect_to my_favours_path
  end

  def destroy
    @favour = Favour.find(params[:id])
    @favour.destroy
    redirect_to my_favours_path
  end

  private

  def favour_params
    params.require(:favour).permit(:name, :description, :category_id, :price_cents, :location, :start_time, :end_time)
  end
end
