class FavoursController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    # Vue de toute les Favours sur le marcher, visible de tout le monde... (C'est notre pages d'accueil)
    @categories = Category.all
    @favours = Favour.geocoded #.left_outer_joins(:contract).where("contracts.id IS NULL") #.left_outer_joins(:contract).where("contracts.id IS NULL"), permet d'afficher toute les favours qui non pas de contracts
    @favours = @favours.where(category_id: params[:category]) if params[:category].present?

    @markers = @favours.map do |favour|
      {
        lat: favour.latitude,
        lng: favour.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { favour: favour })
      }
    end
  end

  def filter_categ
    @favours = Favour.where(@favours.category == @category)
  end

  def myfavours
    # Nouvelle pages générer pour voir uniquement nos Favours créer, avec possibilité d'edit et supprimer
    @favours = Favour.where(user: current_user)
  end

  def show
    # pour avoir les infos du user dans la show
    @favour = Favour.geocoded.find(params[:id])
    @marker = {
      lat: @favour.latitude,
      lng: @favour.longitude
    }
    @user = @favour.user
  end

  def new
    @favour = Favour.new
  end

  def create
    # Creation d'une nouvelle Favour qui appartient à un User, si valide alors renvoie vers pages de paiement
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
    # Edit des Favour, possible uniquement par celui qui l'a créer
    @favour = Favour.find(params[:id])
    @favour.update(favour_params)
    redirect_to my_favours_path
  end

  def destroy
    # Possibilité de supprimer ses Favours
    @favour = Favour.find(params[:id])
    @favour.destroy
    redirect_to my_favours_path
  end

  private

  def favour_params
    params.require(:favour).permit(:name, :description, :category_id, :price_cents, :location, :start_time, :end_time)
  end
end
