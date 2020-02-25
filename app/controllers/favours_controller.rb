class FavoursController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @favours = Favour.left_outer_joins(:contract).where("contracts.id IS NULL")
  end

  def myfavours
    @favours = Favour.where(user: current_user)
  end

  def show
    @favour = Favour.find(params[:id])
  end

  def new
    @favour = Favour.new
  end

  def create
    @favour = current_user.favours.build(favour_params)
    if @favour.save
      redirect_to root_path
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
    redirect_to favour_path(@favour)
  end

  def destroy
    @favour = Favour.find(params[:id])
    @favour.destroy
    redirect_to favours_path
  end

  private

  def favour_params
    params.require(:favour).permit(:name, :description, :category_id, :price, :location, :start_time, :end_time)
  end
end
