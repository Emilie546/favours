class ContractsController < ApplicationController

  def index
    # Nous permet de voir toutes les Favours que l'on accepter, et uniquement les notres...
    @contracts = Contract.where(user: current_user)
  end

  def new
    @favour = Favour.find(params[:favour_id])
  end

  def create
    # Permet d'accepter une Favour et cela créer un contract
    @favour = Favour.find(params[:favour_id])
    Contract.create(user: current_user, favour: @favour)
    redirect_to contracts_path
  end

  def destroy
    # Supprimer un contract, en le suppriment la Favour est denouveau visible de tous, elle retourne sur la page d'index de Favour
    @contracts = Contract.find(params[:id])
    @contracts.destroy
    redirect_to contracts_path
  end
end
