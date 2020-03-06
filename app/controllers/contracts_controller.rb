class ContractsController < ApplicationController

  def index
    # Nous permet de voir toutes les Favours que l'on accepter, et uniquement les notres...
    @contracts = Contract.where(user: current_user)
    @current_contracts = Contract.where(user: current_user).where.not(accept_at: nil).select { |contract| contract.favour.end_time > DateTime.now }
    @past_contracts = Contract.where(user: current_user).where.not(accept_at: nil).select { |contract| contract.favour.end_time < DateTime.now }
    #.where.not(accept_at: nil) permet d'afficher uniquement tous les Contracts qui ont la colonne Accept_at qui n'est pas nul
  end

  def accept
    # Permet d'update uniquement la colonne Accept_at, et de lui mettre la date actuelle
    @contract = Contract.find(params[:contract_id])
    @contract.update(accept_at: DateTime.now)
    redirect_to my_favours_path
  end

  def refuse
    # Permet d'update uniquement la colonne refuse_at, et de lui mettre la date actuelle
    @contract = Contract.find(params[:contract_id])
    @contract.update(refuse_at: DateTime.now)
    redirect_to my_favours_path
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
